# Kendo Coupons
## Table of content
* [About](#about)
* [Functionality](#functionality)
* [Feature](#feature)
* [Tech stack](#tech-stack)
* [Instruction](#instruction)
* [Design process](#design-process)
* [User Story](#user-story)
* [A workflow diagram of the user journey](#a-workflow-diagram-of-the-user-journey)
* [WireFrames](#wireframes)
* [Database Entity Relationship Diagrams](#database-entity-relationship-diagrams)
* [Project plan and timeline](#project-plan-and-timeline)
* [Trello](#trello)
* [Short Answer Questions](#short-answer-questions)



## About
1. Link to [published app on Heroku](https://kendodeal.herokuapp.com/)
2. Link to [Github Repo](https://github.com/keshibat/ken_adam_ob)

[![kendo coupns](https://i.imgur.com/jpswWqx.png)](https://kendodeal.herokuapp.com/)


### Functionality

1. Users can choose to become a Seller or a Buyer.

![searchbox](https://i.imgur.com/xoTIfZO.png)

2. Sellers can edit their information and add, edit and delete products.

3. Sellers can add and edit links to their website and their google reviews.

![Imgur](https://i.imgur.com/mqx70gd.png)

4. Sellers cannot buy products or add product review.

![Imgur](https://i.imgur.com/AiziQnl.png)

5. Sellers have their own CMS profile.

![Imgur](https://i.imgur.com/ep1PXxX.png)

6. Buyers can add multiple products to their shopping cart and checkout collectively.

7. Buyer can view their purchase history and delete their history.

![Imgur](https://i.imgur.com/3n8VHYG.png)


8. Buyer can add a product review.

![Imgur](https://i.imgur.com/Uzmd0Kk.png)

9. Buyer have their own profile.

![Imgur](https://i.imgur.com/uLsyhOC.png)

### Feature

1. User search through by any combination of name of restaurant, type of cuisine and location.

![searchbox](https://i.imgur.com/g31cGbi.png)

2. QR code feature

QR is short (they can be read quickly by a cell phone). We are using this technology to transform the piece of information between buyer and seller(restaurant deal).

![QR_CODE](https://i.imgur.com/r7CYZ7s.png)

3. Shopping Cart

![Imgur](https://i.imgur.com/4WOD181.png)
![Imgur](https://i.imgur.com/RL8Oi34.png)

4. The transaction between buyer(Customer) and the seller(Restaurant) after scanning the QR code purchase - with updating in the customers profile

![Imgur](https://i.imgur.com/uzeWTDc.png)
![Imgur](https://i.imgur.com/gSHrroA.png)
![Imgur](https://i.imgur.com/z9sAWQ6.png)


### Tech stack
[![Tech Stack](https://i.imgur.com/DziCzWH.png)](https://stackshare.io/keshibat/my-stack)
[![](https://i.imgur.com/PqNxYcg.png)](https://stackshare.io/keshibat/my-stack)
<!-- * [Rails]
* [Github]
* [Trello] -->
### Instruction
Open your terminal

```sh
$ git clone https://github.com/keshibat/ken_adam_ob
$ cd your_directory
$ bundle install
$ rails db:create
$ rails db:seed
$ rails db:migrate
$ rails server
```
Access to http://localhost:3000/

### Design process

#### mood baord

![moodboard1](https://i.imgur.com/3ARk3cq.png)
![moodboard2](https://i.imgur.com/D3y93ec.png)
![moodboard3](https://i.imgur.com/AB1qUpC.png)


#### hand writing wireframe

![wireframe](https://i.imgur.com/DYNiqhE.png)

### User Story

As a Restaurant Owner Kim. I want to promote the restaurant name. So that people can recognize the restaurant.

As a Restaurant Owner Jessica. I want to let customer test the food. So that customer knows the food is very tasty.

As a Restaurant Owner Tomas. I want to sale more meal. So that I can make more money.

As a Restaurant Owner Jinny. I want to clear food stock before it expired. So that I do not waste the food.

As Harry(Student). I want to eat a cheap meal. So that I can save more money for my study.

As Emily(office worker). I want to save time waking around looking for a restaurant at lunch. So that I have more time to work.

As Jacop(Foodies). I want to have nice food. So that I can take a photo and put it on my Instagram.

As  Sophia(New in town). I want to know what restaurant is around me and good. So that I can bring my family to a restaurant for my birthday party.


### A workflow diagram of the user journey
![workflow diagram](https://i.imgur.com/01KH3Qw.png)
![workflow diagram](https://i.imgur.com/uwaizyu.png)


### WireFrames

[![wf1](https://i.imgur.com/y6baXGv.png)](https://drive.google.com/file/d/1kRIbOAt_-xDsXxtl_p0bAHgjxE3AOc3T/view?usp=sharing)

[![wf2](https://i.imgur.com/vwZjHRN.png)](https://drive.google.com/file/d/1kRIbOAt_-xDsXxtl_p0bAHgjxE3AOc3T/view?usp=sharing)

[![wf3](https://i.imgur.com/NNhbAGf.png)](https://drive.google.com/file/d/1kRIbOAt_-xDsXxtl_p0bAHgjxE3AOc3T/view?usp=sharing)

[![wf4](https://i.imgur.com/ASKDqrj.png)](https://drive.google.com/file/d/1Lp2IKKUxMcJIizUikKOdM8bgRDRbnjEJ/view?usp=sharing)

[![wf4](https://i.imgur.com/H15R8k0.png)](https://drive.google.com/file/d/1Lp2IKKUxMcJIizUikKOdM8bgRDRbnjEJ/view?usp=sharing)


### Database Entity Relationship Diagrams

![Relationship_Diagrams](https://i.imgur.com/tSKrhV8.png)

### Project plan and timeline

![Imgur](https://i.imgur.com/dtQBljS.png)

### Trello
[![Trello](https://i.imgur.com/46BnJ8a.png)](https://trello.com/b/Z0cIwjOX/railsrestaurantcoupons)


### Short Answer Questions

#### 1.What is the need (i.e. challenge) that you will be addressing in your project?

We have 2 user types for our app; the first are restaurant customers. We are focusing on city office workers who buy lunch at least once a week. The second are restaurant business owners.

**USER: Restaurant Customers** From the perspective of Restaurant Customers(i.e city office workers who buy lunch)
their needs are;

To be able to buy a lunch with a discout price so that I can save some dollars and try new restaurant and find a restaurant I like.


**USER: Restaurant Business Owner** From the perspective of the Restaurant Business Owner
their needs are;

To find new customer and meet their specific business needs that can raise their sale.



#### 2.Identify the problem you’re trying to solve by building this particular marketplace App?


For Restaurant Customers

They may want to try new restaurants but they may not have enough lunch budgets to try new restaurants besides their familiar restaurats which means if the lunch price is the still same as they pay for their familiar restaurats, they less like to try new restaurants.


For Restaurant Business Owner
Due to higher levels of competition amongst restaurants, Restaurant Business Owner needs a flexible and customizable coupon to help their new customers to try their food.


**Why is it a problem that needs solving?**

For Restaurant Customers(i.e city office workers who buy lunch) constantly looking for place to eat and trying to save thier lunch dollars as much as they can and this app gives them chance to explore new restaurants with the discount price.


For Restaurant Business Owner, they can let new customer to try thier food/product/service with the flexible and cutomizalbe coupon for their specific needs.


#### 3.Describe the project will you be conducting and how your App will address the needs.

The restaurant owner will be able to easily sale product(Restaurant’s meal deal) online. Therefore, they can sale, update or get feedback to improve the products and services for next time. They also can keep track from the database, how many sales or how many customers they get.


#### 4.Describe the network infrastructure the App may be based on.

Ruby on rails came with a built in web server named puma that allowed us to view our Ruby web applications on our local machines.

We deployed our app to Heroku. Heroku is a Platform-as-a-Service which capable of erver configuration, network management and DNS.

We use Amazon S3 for image storage. Amazon S3 is simple web service interface that can be used to store and retrieve any amount of data at any time from Amazon EC2 or from anywhere on the web.


#### 5.Identify and describe the software to be used in your App.


1. Backend Server Side is Ruby on Rails
2. We use Devise for SignIn/Login
3. Database is Postgres SQL
4. Describe. Front End side, we are using HTML, CSS and Bootstrap.
5. For for data storage, we use AmazonS3 to store images.
6. For cloud hosting, we use HEROKU to deploy our rails application.
7. Payment process is hanled by Stripe.



#### 6.Identify the database to be used in your App and provide a justification for your choice.

We are using Postgresql for our database. PostgreSQL is ACID-compliant and transactional. It offers support for RDBMS features such as updatable and materialized views, triggers, foreign keys; functions and stored procedures.

The main reason why we choose Postgresql over Sqlite 3
One is storage: The SQLite library is less than 500kb while PostgreSQL is much larger in size.
Since the user is able to upload their own restaurant or coupon images using Postgresql is reasonable.

Second is Multiple Access: PostgreSQL handles multiple users and with clear levels of permission very well while SQLite does not have handle multiple simultaneous access. User should be able to upload thier images reagardles multiple users access.

Third is Security and authentication: SQLite does not provide an authentication system. The database file itself can be updated/read by anyone. Since we deploy our rails applicaiton to cloud internet open soruce HEROKU, we don't want expose user's information by not using Postgresql.


#### 7.Identify and describe the production database setup (i.e. postgres instance).

Postgres is the PostgreSQL database server. In order for a client application to access a database it connects (over a network or locally) to a running postgres instance. The postgres instance then starts a separate server process to handle the connection.


#### 8.Describe the architecture of your App.

We use Ruby on Rails for framkework.
Ruby on Rails follows Model-View-Controller (MVC) architectural pattern.
For front-end side, we use HTML CSS and bootstrap.
Rails as an in-built web server, Puma and we are hosting our application on Heroku.
Database is Postgresql which is a SQL database.



#### 9.Explain the different high-level components (abstractions) in your App.

For front end styling, we are using
The app follows the MVC pattern decomposing functions into models, controllers, and views.
We are also using various Ruby Gems, Devise.
For front end styling, we are using the Bootstrap CSS library.


#### 10.Detail any third party services that your App will use.

We use AWS S3 for image uploading.
We use Stripe for payment processing.
We use QR code gem for our restaurant webstie OR code.


#### 11.Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

Our kendodeals app is basically local community and small business owner version of [groupon](https://www.groupon.com.au/). You can discover the best a city has to offer right from your desktop computer or mobile phone, and purchase and experience amazing deals in real time. We only offer deals we would want to buy, and at great prices of up to 70% off.

Examples of two sided marketplace apps similar to our own

1. Gumtree
2. Groupon

![architecture](https://i.imgur.com/rkE4nqI.png)

Core elements of 2 sided marketplace apps

We maintain our data integrity by having following data structure.

Personal buyer can only buy products and write a review which he or she bought.
In contrast to that, Business seller can only sell products and will not be able to buy or write products.

Sign in process, authentication and authorisation.
Two types of user (personal buyer/ business seller)
Personal buyer has data for carts table db (purchased listing).
Personal buyer does not have data for product_listings table.
Business seller has data for product listing.
Business does not have data for carts.

#### 12. Discuss the database relations to be implemented.

Kendo Deals uses two types of database relations.

1. **One-to-one–** Both tables can have only one record on each side of the relationshipexample:one user has one seller
2. **One-to-many-** The primary key table contains only one record that relates to oneor many records in the related table.Example: one seller has many product listings


#### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

1. **Cart Model**

    a.belongs_to :user

    b.has_one_attached :picture

2. **cuisine Model**
    a.has_many :sellers

3. **location Model**

    a.has_many :sellers

4. **product_listing Model**

    a.belongs_to :seller

    b.has_many :product_reviews, dependent: :destroy

    c.has_one_attached :picture

5. **product_purchased_listing Model**

    a.belongs_to :user

6. **product_review Model**

    a.belongs_to :user

    b.belongs_to :product_listing

7. **seller Model**
    a.belongs_to :user

    b.belongs_to :location

    c.belongs_to :cuisined.has_one_attached :picture

8. **user Model**

    a.has_many :product_purchased_listings, dependent: :destroy

    b.has_many :product_reviews, dependent: :destroy

    c.has_one :seller, dependent: :destroy

#### 14.Provide your database schema design.
![database_schema_design](https://i.imgur.com/tSKrhV8.png)

#### 15.Provide User stories for your App.

As a Restaurant Owner Kim. I want to promote the restaurant name. So that People can recognize the restaurant.

As a Restaurant Owner Jessica. I want to let customer test the food. So that customer knows the food is very tasty.
As a Restaurant Owner Tomas. I want to sale more meal. So that I can make more money.

As a Restaurant Owner Jinny. I want to clear food stock before it expired. So that I do not waste the food.

As Harry(Student). I want to eat a cheap meal. So that I can save more money for my study.

As Emily(office worker). I want to save time waking around looking for a restaurant at lunch. So that I have more time to work.

As Jacop(Foodies). I want to have nice food. So that I can take a photo and put it on my Instagram.

As  Sophia(New in town). I want to know what restaurant is around me and good. So that I can bring my family to a restaurant for my birthday party.


#### 16.Provide Wireframes for your App.
![WF2](https://i.imgur.com/EGTKdqx.png)

#### 17.Describe the way tasks are allocated and tracked in your project.

First we break overall tasks down for our rails application. (i.e) wireframe, database schema, MVC, Stripe, AmazonS3, Style etc. We separaeted task using Trello and Google Docs. Then allocated thsoe tasks for each memeber of our team.

Then we break it down General task to a detailed feature task. (i.e)
We set due data to finish the task currenly we're working on in order to be right on track. We checking each other how's the task going and constantly slightly modification. (i.e) When we ahead of the time our schedule which we thought it takes a day but it only takes 3 hours, we move on next feature, vise versa.

We constanly communicate by using slack to share. If our applicaiton run into errors and needs to be solved, we share our logs and help each other to get through.


#### 18.Discuss how Agile methodology is being implemented in your project.

Everytime we modifed the code we commit and push to the currently working branch Github. When the code overlaps other feature tasks, instead of seperating tasks and mergering after, we did pair programming. When we testing our application on HEROKU, one person test and find the bug, one person modifed the code and test again.

#### 19.Provide an overview and description of your Source control process.

We prepared remote master, develop, feature and current_working_feature(i.e AmazonS3_feature) branch.
For local branch we work own current_working_feature
and push to the remote feature and current_working_feature(i.e AmazonS3_feature).
Then, merge remote current_working_feature to remote feature branch.
If feature branch is working fine, merge to develop branch.
We merged develop branch to master branch for deploying to HEROKU.


[![Testing Process](https://i.imgur.com/S84JHws.png)](https://docs.google.com/spreadsheets/d/1_hoesX9xQmlJy0OX8hcMBSrKBiAPDnwgbwAkEnu3DOY/edit#gid=1786713470)

#### 20.Provide an overview and description of your Testing process.

We did manual testing for our rails application. Break it down for every function for the each pages/routers and did manual testing whether each function is working as desgined.

Link to [Testing Document](https://docs.google.com/spreadsheets/d/1Wjpyy8V1Ya7A4c0MwoiqZ5cm6Kdt4-GFFbsaigIt72o/edit?usp=sharing)

[![Testing Process](https://i.imgur.com/9zyGvLw.png)](https://docs.google.com/spreadsheets/d/1Wjpyy8V1Ya7A4c0MwoiqZ5cm6Kdt4-GFFbsaigIt72o/edit?usp=sharing)

#### 21.Discuss and analyse requirements related to information system security.

Cross-Site Request Forgery (CSRF) is an attack that allows a malicious user to spoof legitimate requests to your server, masquerading as an authenticated user.

SQL injection usually occurs when you ask a user for input, like their username/userid, and instead of a name/id, the user gives you an SQL statement that you will unknowingly run on your database.

#### 22.Discuss methods you will use to protect information and data.

Rails applications has protect_from_forgery method by default for CSRF protection, which checks the token and resets the session if it doesn't match what was expected.

In our apps, seller will not be able to write a review.
In order to be write a review, your account needs to be personal buyer account and you need to actually buy that coupon.

In our apps, our application validates user inputs before they upload their information.

For Hosting Images  by using Amazon S3 data will be protected against network and power problems as well as against hardware failure.

Payment process is handled by Stripe. Credit card information will not be saved in our application.

#### 23.Research what your legal obligations are in relation to handling user data.

The Payment Card Industry Data Security Standard (PCI DSS) is a set of data protection mandates developed by the major payment card companies and imposed on businesses that store, process, or transmit payment card data. As part of their contracts with the card companies, merchants and other businesses that handle card data may be subject to fines if they fail to meet the requirements of PCI DSS compliance.

As soon as we keep credit card inforamtion our database, we are responsible for PCI compliance.We do not keep user's credit card numbers on our database. Instead we let handle credit card details to third party (i.e) Stripe.

The Privacy Act 1988 (Privacy Act) regulates how personal information is handled. The Privacy Act defines personal information as: individual's name, email.
We need to abide by these APPs in the collection and storage of personal information by our app.

[Rails]: <https://github.com/joemccann/dillinger>
[Github]: <https://github.com/>
[Trello]: <https://trello.com/>