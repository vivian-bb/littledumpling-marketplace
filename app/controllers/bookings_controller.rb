class BookingsController < ApplicationController
    
  
 # GET /bookings or /bookings.json
  def enquiries
    @bookings = Booking.all
  end


  # GET /booking/new
  def new
      @booking = Booking.new
  end

  # GET /menus/1 or /menus/1.json
    def show
    
    end


    # GET /booking/1/edit
    def edit
    end

    # POST /bookings or /bookings.json
    def create
      @booking = Booking.new(booking_params)
      @booking.user_id = current_user.id
      respond_to do |format|
        if @booking.save
          format.html { redirect_to @booking, notice: "Booking was successfully created." }
          format.json { render :show, status: :created, location: @booking }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @Booking.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /bookings/1 or /bookings/1.json
    def update
      respond_to do |format|
        if @booking.update(booking_params)
          format.html { redirect_to @booking, notice: "Your booking was successfully updated." }
          format.json { render :show, status: :ok, location: @booking }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @booking.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /bookings/1 or /bookings/1.json
    def destroy
      @booking.destroy
      respond_to do |format|
        format.html { redirect_to bookings_url, notice: "Your booking was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      # This is make the queries to call the booking that will return an entry that content the same id that comes from params.
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:name, :contact_number, :email_address, :date, :session)
    end




end
