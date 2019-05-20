# Contact Open Source

Contact Open Source is free contact management software, akin to a contacts app, or address book, or customer relationship manganer (CRM).

* [Introduction](#introduction)
* [Implementation](#implementation)
  * [Data store](#data-store)
  * [Web application](#web-application)


## Introduction

The goal of this project is to provide free, open, modern software that is especially easy to change and adapt by software programmers, application developers, and database administrators.


## Implementation


### Data store

The data store is implemented as PostgreSQL, using Liquibase migration annotations. 

We welcome contributing code that provides additional implementations, such as for more databases (e.g. MySQL, SQL Server, Oracle) and for more migration tooling (e.g. Flyway, DB-Migrate, DBMate).

The current code is deliberately very simple: there is only one table: a contact item. 

We encourage you to extend this code as you like, for your own kinds of SQL and functionality.


### Web application

The web application is implemented as Actix, using Rust and Cargo. 

We welcome contributing code that provides additional implementations, such as for more web frameworks (e.g. Node Express, Ruby on Rails, Python Django).

The current code is deliberately very simple: there are only two web pages: a contact list, and a contact item.

We encourage you to extend this code as you like, for your own kinds of web pages and capabilties.
