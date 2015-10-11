# LibSys
A **Library Web Application** project for Course CSC-517.

## Description
We build a library system for our **library members** to search books and check out or return books. **Administrators** of our library will also be able to use the same system to view books, add books, update books as well as manage our library members. Administrators can also check out books or return them on behalf of our members, which is a very cool thing. 

We use **Ruby on Rails** and **PostgreSQL** database to build the system, and finally get a fully functional and reliable library system with a friendly user interface as well. 

## Architectural pattern
ModelšCviewšCcontroller (MVC) is a software architectural pattern for implementing user interfaces. It divides a given software application into three interconnected parts.
![Ruby on Rails MVC pattern](http://chapar.co/wp-content/uploads/2015/06/ruby-on-rails-architecture-rails2-ideas-ruby-on-rails-mvc.jpg)

## Structure
The Library System basicly has six pages.

**Login Page:** All library members and administrators can login in this page, and new user may sign up here as well.

**User Page:** The User Page is like a home page for system user. Where they can use it as a navigation page.

**Books Page:** Most of books works are finished at the Books Page. Both member and administrator can use search bar to search books,to view the detail of each book, to see if the book is still available and to return the book they have borrowed.

**History Page:** Where member can view his or her own borrow history, and if you are an administrator, you can get all the borrow histories. You can alse view a checkout history of a certain book or a certain member. 
 
**User Manage Page:** This page is only available for administrators, where they can manage library members and other administrators as well. Ofcourse there is a super administrator.

**Book Manage Page:** This page is only available for administrators, where they can add, update or delete any book.

## Instruction:
###Library Members:
1. Anyone can sign up as a library member using their email, name and password. **E-mail** address should be **unique**.
2. Members need to log in to get library system service.
3. When logged in, members can use navigation bar to get to the page they want to.
4. In **"User Page"**, members can edit his or her own profiles.
5. Members can search books using **ISBN** or **title** or **author** or **description** or **status**(key word: **Available**) at **"My Book"** page.
6. Members can view his or her own borrow book histories at **"Own History"**.
7. Clicking any book title, member can view the detail of the book. If the book is still in library, then there will be a **"Check Out"** button. Clicking on it, the book will be checked out immediately. If not, there will display **"Unavailable"**. If the member keeps that book now, there will display **"Return Book"**.
8. Members can return his or her borrowed books both in **Books pages** and **Own History**

###Library Members:
1. There is a **Super Administrator(PreConfigured Administrator)** in the system. Which can be logged in as **email:you@you** with password **bb**. 
2. Any administrator can use **"New Admin"** button to add new administrators to the system. And administrator can also edit or delete other administrator (except for PreConfigured Administrator) using the **edit** or **delete** button. They can also manage member profiles.
3. Administrator can add a new book using **New Book** button, as soon as finished required form fields and submit to the system, the book will become available.
4. Administrator can search books using **ISBN** or **title** or **author** or **description** or **status**(key word: **Available**) at **"My Book"** page.
5. Clicking any **book title**, administrator can view the detail of the book. Administrator can check out books on behalf of members. If the book is still in library, then there will be a **"Check Out for member"** button. Typing the email of the member, clicking on the, the book will be checked out immediately. If not, there will display **"Unavailable"** with the user email of who has borrowed the book. If the member keeps that book now, there will display **"Return Book"**.
6. Administrators can view all borrow book histories at **"All History"**. And clicking on any book title or user email, administrator can view all the history of a certain book or a certain member.

###Mailer:
Members can add himself to the books' receivers list if the book is unavailable. If the book is returned, he will receive a email.
1. In ***"MyBooks"***, members can see ***Send Notification*** button. You can add yourself to receivers list.
2. In the accound of whom borrowed the book, you can return your book. And at the same time server will send an email to the receivers. And the receivers' list will be set empty.

###Suggest a book:


##Deployment:

	Ruby Version: 	2.0.0
	Rails Version: 	4.2.4 (latest)
	SQL: 			PostgreSQL
	UI theme: 		http://getbootstrap.com/examples/theme/
	PaaS:			Heroku

## Authors:
Banji Zhang,
Jianbin Chen,
Muchen Zhang.
