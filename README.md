# LittleFeimiDumplings app -- T2A2

##### R7 Identification of the problem you are trying to solve by building this particular marketplace app.

The small restaurants have difficult times during COVID, there is no customers but they still want to provid food for families. Our website helps clients to finding their favorite dishes and buy them.

##### R8 Why is it a problem that needs solving?

LittleFeimiDumplings is a simple app that provides services for small restaurants who sell dumplings and the people who love to eat dumplings. The restaurant can post their signature dishes and the inspiration of themselves. The app also have functions that clients can make a booking request, they can explore dumplings and other traditional food from the restaurant and order the food online. The app will solve the problem that the restaurant need to change their mode of operation during the hard COVID situations, also the app will help people who love to eat dumplings and desserts to find out the food they love to eat. They will have more choices when they want to trying different kinds of dumplings or restaurants.

##### R9 A link (URL) to your deployed app (i.e. website)

Link to [Heroku Deploy](https://littlefeimidumplings.herokuapp.com/)

##### R10 A link to your GitHub repository (repo).

Link to [Github](https://github.com/vivian-bb/littledumpling-marketplace)

##### R11 Description of your marketplace app (website), including:

- Purpose: the app provided a restaurants marketing, booking and ordering service platform that can be used to serve for double side of restaurants and clients.

- Functionality / features:

  - The restaurant can CRUD(create, read, upload, Delete) the menu function that contents the dishes they served.
  - The clients can booking table for their lunch or dinner online, also able to find location with google map in contact us page.
  - The restaurant could upload their information and story in About us page.
  - The app will require log in for safe purpose.
  - The app can make payment for the order.

- Sitemap:

![Wireframe Wireframe](/app/assets/images/sitemap.png)

- Screenshots:

  - Home page
    ![Home page](/app/assets/images/ss2.png)
  - Menu listing page
    ![Menu listing page](/app/assets/images/menulisting.png)
  - Create new menu page
    ![Create new menu page](/app/assets/images/menuss.png)
  - Menu show page
    ![Menu show page](/app/assets/images/ss.png)
  - Payment page
    ![payment page](/app/assets/images/payment-stripe-page.png)
  - Booking page
    ![booking page](/app/assets/images/bookingss.png)
  - About us page
    ![aboutus page](/app/assets/images/aboutusss.png)

- Target audience:

  - The restaurants that would being requried to post dishes online, use the functions inclued edit, delete and create, read the menu. Upload the details about dishes including dish's name, description, price and pictures and so on.
  - The clients who was looking for the food for themselves and families, they would like to booking online and ordering food online.

- Tech stack (e.g. html, css, deployment platform, etc)

  - deployment on heroku
  - AWS S3 for database storage
  - UltraHook for public webhook endpoints with development environments
  - gem ultrahood for received the webhook on localhost
  - gem simpleform
  - gem bootstrap for styling and layout
  - gem devise for authentication

##### R12 User story for your app

The small restaurant owner Jenny want to post their information online, they have lots of clients before COVID, but the lock down policy was affect her business, the walk in client was reduce 60% than before. She want find a online service can upload the information about her restaurant and help the restaurant attract more clients.

The manager of the restaurant want to find the online platform that can be provid service like upload, edit, delete their information includ the menus, dishes name and description, price, availability and also able to upload the pictures of dishes. the website also need to support client to make order food and make payment online. When lockdown has break, they also need booking functions that the client can send their requirement online to booking a table.

The website is focus on clients who was looking for the restaurant must have dumplings, the dumpling lover Danny was very enjoy to eat different kind of dumplings, he was explore the different restaurant before lockdown, but now he don't have choice to eat the restautant that in a long distance with him. That was terrible, he was so glad to use an app if it will help him to find the restaurant who was good at make dumplings, then he can make order online. He find a great restaurant with taste fry dumplings and also a new dish named Yuanzi with hot soup he decided to go there to have dinner, so he need make a onling booking.

##### R13 Wireframes for your app

![Wireframe Wireframe](/app/assets/images/wireframe.png)
Home page
![Wireframe Wireframe](/app/assets/images/home-wf.png)
Menu page
![Wireframe Wireframe](/app/assets/images/menu-list.png)
Booking page
![Wireframe Wireframe](/app/assets/images/booking-wf.png)
About us page

##### R14 An ERD for your app

![ERD ERD](/app/assets/images/erd.png)

##### R15 Explain the different high-level components (abstractions) in your app

In my app, I had 6 components that under the the parent components --- ApplicationRecord, the Booing, Category, Menu, Order and User (The listing component that I was no longer use it anymore but I don't have enough time to delete it, it could be caused some errors so I didn't to remove it on this stage.). The components contented all the function that my app have.

##### R16 Detail any third party services that your app will use

- AWS - Amazon web service

  - S3 for database storage
    ![AWS AWS](/app/assets/images/aws.png)
  - Identity and access management (IAM) for users management
    ![AWS AWS](/app/assets/images/authenticateusers.png)

- Stripe - The payment service platform
  ![Stripe Stripe](/app/assets/images/payment.png)

##### R17 Describe your projects models in terms of the relationships (active record associations) they have with each other

- The User is **has_many** orders and menus, the relationship between the user order and user menu is **Zero-to-Many**
- The Order is **belongs_to user (buyers, sellers) and menu** that means **foreign key** is connect between the table that included buyer seller and menu.
- The Menu
  - **has_one_attached picture**, that content the one picture as attached for the dish details.
  - **belongs_to user and category**, that means the user id (**foreign key**) is connect between the menu and category table.
- The Category **has_many menus** the relationship between the category and menu is **One-to-many** connect by category id.
- The Booking **belongs_to users** that the **foreign key** is connect between the booking table and user table

##### R18 Discuss the database relations to be implemented in your application

I had 5 tables contented the different part of the database.

The **user table** is contains all the information about the user logged in, that will included User Id, user's email address, password and username. The **user id** is foreign key connect the user table with **order table** and **menu table** also the **booking table**. One user can have **zero-to-many** bookings, Menus and orders.

The **menu table** was contented the data about the dishes information, it was included user id, category id(that is the foreign key connect the menu table with categories table), name, description, price, availability, picture.

The **categories table** is contented the category id, category name and description, that is help restaurant owner to classify the dishes and descript what the dishes type specificly were.

The **order table** is contented the data that the buyer clients successful paid the order, so each user can have **zero-to-many** orders, also the its could content many different dishes that from menu table.

The **Booking table** only contented the data that the clients who was booking a table, it connect by foreign key user_id with user table. Each user could have **zero-to-many** bookings.

##### R19 Provide your database schema design

- Schema screenshot
  ![schema schema](/app/assets/images/schema1.png)

  ![schema schema](/app/assets/images/schema2.png)

  ![schema schema](/app/assets/images/schema3.png)

  ![schema schema](/app/assets/images/schema4.png)

  ##### R20 Describe the way tasks are allocated and tracked in your project

- Trello for the project management and tracking.

  - Link to [My Tello board](https://trello.com/b/TbDRfclA/marketplace-proj)

  I was using trello to manage the project tasks. I create few of my goals and working needs to be done, but only use at the the project start period, I didn't use it whole time for the project.

  ![Trello trello](/app/assets/images/trelloscreenshot.png)
