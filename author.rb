# create author class
# an initialize method to take name argument and set it as an instance variable
# create @@all and it should be an empty string to store all instances
# name attribute should have a reader method
# create a article instance method that should return an array of all the article instances that are written by this author
# create a magazine instance method that should return an array of unique magazine instances writen by this author
# create add_article instance method that takes in two parameters, magazine and title
# it takes i n a new Article instance the Author, magazine instance and a title that is a string
# has topic_areas instance method that returns an array of af all the unique "category" attributes of the Magazine instances that this Author has written


require_relative "./article.rb"
require_relative "./magazine.rb"

class Author
    attr_reader :name 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    
end