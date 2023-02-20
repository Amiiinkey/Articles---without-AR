# Articles---without-AR

# BDD
  - This application is  magazine domain with three models? : Author, Article, Magazine.
  - It allows a user to view the authors of articles in the magazine and which articles
belong in which magazine.
  - An author has many articles.
  - A magazine has many articles.
  - Articles belong to both Author and Magazines.
  - Author to Magazine is a many to many relationship.
  - Classes should have their own files.
  - There should be a configured run file for the app.

# Pseudocode

### article file
  - create an article class
  - should have attributes author, magazine and title
  - initialize attr_reader method to create a getter method for those attributes
  - create an "all" class variable to store all instances of "article" that have been created(should be an empty string)
  - create an initialize method that takes author, magazine and title as arguments and sets them accordingly
  - add the newly created instance to "all" array
  - create a self.all class method that should return an array of all "Article" instances created

### magazine file
  - create magazine class
  - should have three attributes name, category and a class variable @@all
  - @@all should be an empty string to store all instances
  - create an initialize method that takes name and category as arguments
  - name and category should have a reader and writer methods
  - it initializes a new Magazine object with name and category and pushes the instance to the @@ll array
  - create self.all class method to return all instances of the Magazine class that has been initialized
  - creat an instance method contributors which returns an array of all authors  that have written for this magazine(map over them to get the authors)
  - create an instance self.find_by_name it should take name as argument
  -  it should return the first magazine object that matches, this is done by the use of find method on the "all" array of magazine.(magazine.name == name)
  - create an article_titles instance method
  -  it should return an array string of the titles of all articles written for this magazine class.
  -  create contributing_authors method
  -  it should return an array of authors who have written more than 2 articles
  - create array to hold all authors who have contributed more than two articles
its done by iterating through all of the author instances (Author.all)
  - create count
  - initialize it to 0
  - iterate through all of the articles and increment count
  - use group_by method to group articles by author name
  - use select method to filter the authors for those who have contributed more than 2 articles
  - return contibuting_author(array of selected authors) that are uniq

### author file
  - create author class
  - an initialize method to take name argument and set it as an instance variable
  - create @@all and it should be an empty string to store all instances
  - name attribute should have a reader method
  - create an article instance method that should return an array of all the article instances that are written by this author
  - create a magazine instance method that should return an array of unique magazine instances writen by this author
  - createe an add_article instance method that takes in two parameters, magazine and title
  - it takes in a new Article instance the Author, magazine instance and a title that is a string
  - has topic_areas instance method that returns an array of af all the unique "category" attributes of the Magazine instances that this Author has written

## Description
- This is a code challenge uses Ruby language

- It has three files:

  - magazine.rb file that does the following:

    - It has a class method. It has an initialize method that initializes the name and category as a string. It has a name method that returns the name of the magazine. It has a category method that returns the category of the magazine. It has an all instance that returns the array of all magazine instances. It has self.find_by_name method that returns the first magazine object that matches. It has article_titles method that returns an array string of the titles of all articles written for that magazine. It has contributing_authors method that returns an array of authors who have written more than 2 articles for the magazine

   - article.rb file that does the following:

     - It has a class Article. It has an initialize method that takes in author, magazine and title as arguments and sets them accordingly. It has a getter method to get the arguments. It has a title method that returns the titke for that given article. It has a self.all method that returns an array of all Article instances.

   - author.rb file that does the follow:

     - It has an initialize method that takes name as argument. It has a getter method to get the name of the author. It has a name method that returns the name of the author. It has add_article method that takes magazine and title as arguments. It creates a new Article instance and associates it with that author and that magazine. It has topic_areas method that Returns a unique array of strings with the categories of the magazines the author has contributed to.

   - run.rb file that:
     - It is used to run the code from the three files

- Prerequisites

  - In order for you to use the content on this repo ensure you have the following:

    - A computer that runs on either of the following; (Linux, Mac OS and Windows)

    - nodejs 9.0+

    - node v14.17.4 and above

    - npm 6.14.14 and above

    - Vue 2.6.11

    - Status:
      - maintained, and is currently in development

    - Version:
      - v0.1.0

- Setup instructions:

  - To use this repository on your machine requires some simple steps:

     - Open a terminal / command line interface on your computer

     - Clone the repo by using the following to create a copy on your local machine:
          - git clone https://github.com/amiiinkey/phase-3-code-challenge-Articles-without-AR

     - Change directory to the repo folder:
          - cd Articles--without-AR

     - Open it in Visual Studio Code
          - code .
## Author
 - MohammedAmin Ahmed

## License
 - MIT Copyright (c) 2022 MohamedAmin Ahmed










