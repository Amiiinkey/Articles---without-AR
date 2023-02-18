# create magazine class
# should have three attributes name, category and a class variable @@all
# @@all should be an empty string to store all instances
# create an initialize method that takes name and category as arguments
# name and category should have a reader and writer methods
# it initializes a new Magazine object with name and category and pushes the instance to the @@ll array
# create self.all class method to return all instances of the Magazine class that has been initialized
# create an instance method contributors which returns an array of all authors  that have written for this magazine(map over them to get the authors)
# create an instance self.find_by_name it should take name as argument
# it should return the first magazine object that matches, this is done by the use of find method on the "all" array of magazine.(magazine.name == name)
# create an article_titles instance method
# it should return an array string of the titles of all articles written for this magazine class.
# create contributing_authors method
# it should return an array of authors who have written more than 2 articles
# create array to hold all authors who have contributed more than two articles
# its done by iterating through all of the author instances (Author.all)
# create count
# initialize it to 0
# iterate through all of the articles and increment count
# use group_by method to group articles by author name
# use select method to filter the authors for those who have contributed more than 2 articles
# return contibuting_author(array of selected authors) that are uniq

require_relative './article.rb'

class Magazine
    attr_accessor :name , :category
    @@all = []
    def initialize(name,category)
        @name = name 
        @category = category
        @@all << self
    end

    def self.all 
        @@all
    end

    def contributors
        Article.all.select {|article|article.magazine == self}.map {|article|article.author}
    end

    def self.find_by_name(name)
        all.find {|magazine|magazine.name == name}
    end

    def article_titles
        Article.all.select {|article|article.magazine == self}.map {|article|article.title}
    end

    def contributing_authors
        contributors.group_by {|item| item.name}.select {|author_name, authors|authors.count>2}.values.flatten.uniq
    end

end