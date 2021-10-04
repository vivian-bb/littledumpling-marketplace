# LittleFeimiDumplings app -- T2A2

##### R7 Identification of the problem you are trying to solve by building this particular marketplace app.

The small restaurant who doesn't able has their own website, but they also have marketing requirements and the platform they can show to customers their food and cultures.

#####R8 Why is it a problem that needs solving?
LittleFeimiDumplings is a simple app that provides services for small restaurants who sell dumplings and the people who love to eat dumplings. The restaurant can introduce the signature dishes and the inspiration of themselves. The app also functions so that clients can make a booking request, they can explore dumplings and other traditional food from the restaurant and order the food online. The app will solve the problem that the different culture restaurant can introduce their food and traditional online, the people who love to eat dumplings can also have more information and experience about that kind of food. They will have more choices when they want to trying different kinds of dumplings or restaurants.

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
- Screenshots:
- Target audience:
- Tech stack (e.g. html, css, deployment platform, etc)

User story

LittleFeimiDumplings is a double side website design for a small but have 30 years history of a mather and her daughter's Nickname. During COVID lockdown situation their dumpling restaurant almost collapse, and the old customers can't accept their life is without the favorite dumpling. The good solution is to create a website for online ordering and also provide a good chance to explore more new customers.

Wireframe
![Wireframe Wireframe](/marketplace/app/assets/images/wireframe.png)
ERD--database schema design
![ERD ERD](/marketplace/app/assets/images/erdcopy.png)
The project is allocated and tracked by trello.
![ERD ERD](/marketplace/app/assets/images/trelloscreenshot.jpg)

Problem:

- The Category should be a table, but it was setup as a string, so how to change this?

  How to generate a new table connect with the original database?

- The google map embed false in the contact up page
- After add the payment button to menu page, the menu page could not add any new menu item sucssesfully.

Explain the different high-level components (abstractions) in your App 0/6

Detail any third party services that your App will use 0/6

Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?2/6
Talks about the idea for the site but does not identify the problem

Describe your project’s models in terms of the relationships (active record associations) they have with each other0/6

Discuss the database relations to be implemented 0/6

Provide your database schema design 3/6

Provide User stories for your App 0/6

Provide Wireframes for your App 3/6 ----did 5 wireframe

Describe the way tasks are planned and tracked in your project 2/6
Some evidence of user stories but no indication of how the tasks were planend or tracked

Some evidence of user stories but no indication of how the tasks were planend or tracked

ERD provided represents a normalised database model 3/6
ERD is basic but reflects the app

Model implementation represents a normalised database model 2/6
Only two models are implemented, categories should be a table not a string

Database design appropriately addresses the requirements of a complex scenario2/6
This design is not sufficient to solve the problem of a marketplace

Implemented controllers demonstrate correct use of commands to query the database infrastructure3/6
Queries look untouched from scaffold on menus controller, item controller retrieves all menus

Queries implemented provide correct data for the given scenario3/6
Queries in scaffold get the right data

Code comments demonstrate how the queries implemented correctly represent the database structure0/6
No evidence of code comments

Identify and use appropriate model methods3/6
Uses scaffolded methods

Minimising database calls needed to perform an action0/6
No attempt made to minimize any database calls

Sanitise and validates input to maintain data integrity0/6
No evidence of santisation or validation
