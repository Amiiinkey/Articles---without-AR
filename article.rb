# create an article class
# should have attributes author, magazine and title
# initialize attr_reader method to create a getter method for those attributes
# create an "all" class variable to store all instances of "article" that have been created(should be an empty string)
# create an initialize method that takes author, magazine and title as arguments and sets them accordingly
# add the newly created instance to "all" array
# create a self.all class method that should return an array of all "Article" instances created


class Article
    attr_reader :author, :magazine, :title
    @@all = []
    def initialize(author,magazine,title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end
    def self.all
        @@all
    end
end