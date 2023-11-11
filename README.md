# Overview

This project is a Hotel reservation system - a Java EE application The front-end has been developed using HTML, CSS and Javascript whereas Apache derby database has been used for the back end. The business logic has been developed using the JSP and Servlets. Model-View-Controller (MVC) pattern has been used for the development. The main objective of this project is to design a hotel reservation system for running a hotel business. The Java EE components all run on the server side, on full Java EE server - GlassFish

# Purpose behind developing this application

This project being my first web application, was developed to obtain reasonable familiarity in building a basic web application prototype by creating interactive web pages, handling form submissions and implementing the MVC pattern using servlets and JSP.

# Features included:

• To register new users accessing the front end for the first time
• Add/Edit hotels and relevant details such as name, location and images for the role of admin
• Search availability of hotels based on checkin & checkout dates & book rooms for admin/regular user
• View all available hotels for users to make further bookings
• A section for viewing existing hotels that have been booked with an option to cancel them
• Trigger emails and authenticate users using a one time password in case password is forgotten or has to be changed
• Functionality to keep the logged in user signed in if the user wishes

# What is Model-View-Controller (MVC) ?

The MVC pattern specifies that an application consists of three layers viz. Model, View and Controller. Each of these layers is separated into different objects. The overall components of such an application are easily manageable & are less dependent on each other for proper functioning.
The **Model** consists of Plain-old-Java-objects representing the entities that are important to your application. For instance a shopping application would have domain objects representing items for purchase, shopping carts, credit cards, mailing addresses, accounts, reviews, and so forth. In this example of a Hotel Reservation System, entities have been created representing models for hotel details, user data, booking confirmation details and so on. Often these domain objects come from persistent storage such as a relational database. In this case, the Apache Derby Database has been utilized.
The **View** is used to present the data stored in the model to the user. JSP pages are used as a view in this application. The view knows how to access data from the model however, it does not know how the user can manipulate this data. JSP pages alongside servlets are used to handle the business logic.
The **Controller** is used to handle user interactions through incoming requests. This layer exists between the View and the Model. As the name suggests, it controls the application logic and consists of Java classes that run on application server.

![image](https://github.com/Mandar-1007/Hotel-Reservation-System/assets/112803135/6d7dc801-3b3b-48f1-b2c0-2ec722b9fc85)

# What is a Servlet ?

This servlet is the controller of our web application. On issuing a request, the server routes the request message to the servlet, which will return a response message to the client. In this application, the HttpServlet class has been inherited. These servlets have built-in support for the HTTP protocol. Subsequently, doGet and doPost methods have been overridden in the Servlet class to handle GET and POST requests.

![image](https://github.com/Mandar-1007/Hotel-Reservation-System/assets/112803135/f14612df-a8b2-4c16-9c84-2a169fc52ad6)

# WOW Slider

It is a simple to use jQuery slider. Being highly customizable to fit web site design, it has been integrated in the application to generate a slideshow of hotels on the home page. A vast amount of themes and effects in this particular lightweight and fast slider adds to the visual appeal of the application.

# How to setup the code

• Clone the project in the IDE (NetBeans 8.2 or later)
• In the services tab, right click on 'Java DB' and create a new JDBC connection with username & password as 'hotel'
• Connect to the resulting connection and create databases as observed in the image below

![image](https://github.com/Mandar-1007/Hotel-Reservation-System/assets/112803135/7010d081-faa5-4012-b448-7298f627c820)

• In the project explorer, navigate to Source Packages -> Others -> test.java and place your email accounts' username and password to enable triggering mails for OTP
• In browser settings, under Privacy and Security tab, select No Protection under Safe Browsing temporarily.
• Select Google Chrome as the default browser, right click on home.jsp and run the file

![image](https://github.com/Mandar-1007/Hotel-Reservation-System/assets/112803135/73d286e1-20de-447e-ae37-ca1e088f7cfa)


# Screenshots

https://github.com/Mandar-1007/Hotel-Reservation-System/assets/112803135/10b5e24f-8606-4e08-b254-3730f1c45b56

![image](https://github.com/Mandar-1007/Hotel-Reservation-System/assets/112803135/9b984141-de2f-4024-b15c-1510e86709db)

![image](https://github.com/Mandar-1007/Hotel-Reservation-System/assets/112803135/d126f63c-06c5-42e8-bb4a-e18650b06f8e)

![image](https://github.com/Mandar-1007/Hotel-Reservation-System/assets/112803135/2f316c83-3339-497e-9e65-12198a4dd1c7)

![image](https://github.com/Mandar-1007/Hotel-Reservation-System/assets/112803135/34c6390f-fa40-4a1c-8ead-6a54f85bdb75)





