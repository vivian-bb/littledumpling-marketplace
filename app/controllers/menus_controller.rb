class MenusController < ApplicationController
  before_action :set_menu, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # before_action :set_categories, only: [:new, :edit]

  # GET /menus or /menus.json
  def index
    @menus = Menu.all
  end

 # GET /menus/1 or /menus/1.json
 def show
  session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'], 
        customer_email: current_user&.email, #current_user && current_user.email 
        line_items: [{ 
        name: @menu.name, 
        description: @menu.description,
        amount: @menu.price.to_i*100,
        currency: 'aud',
        quantity: 1
     }],

        payment_intent_data: { 
          metadata: { 
            user_id: current_user&.id,
            # menu_id: @menu.id
          }},
          success_url: "#{root_url}/success?title=#{@menu.name}",
          cancel_url: "#{root_url}/menus"
      )

    @session_id = session.id
    puts "*********"
    pp @session_id
    puts "*********"
    
  end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus or /menus.json
  def create
    @menu = Menu.new(menu_params)
    @menu.user_id = current_user.id
    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: "Menu was successfully created." }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1 or /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: "Menu was successfully updated." }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1 or /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: "Menu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def menu_params
      params.require(:menu).permit(:name, :description, :price, :availability, :category_id, :user_id, :picture)
    end
end
