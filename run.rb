require_relative './author.rb'
require_relative './article.rb'
require_relative './magazine.rb'

# creating some authors
collen = Author.new("Collen")
shamim = Author.new("Shamim")
piscattella = Author.new("Piscattella")
mohamed = Author.new("Mohamed")

# creating some magazines
cosmopolitan = Magazine.new("Cosmopolitan", "novel")
vanity = Magazine.new("Vanity", "news")
geography = Magazine.new("Geography", "Prison")
national = Magazine.new("National", "Arsenal")

# creating some articles
collen.add_article(vanity, "it starts with us")
shamim.add_article(vanity, "The new school")
shamim.add_article(vanity, "The new movies")
shamim.add_article(vanity, "All about prayers")
mohamed.add_article(national, "Worst team")
piscattella.add_article(cosmopolitan,"The new fashion")

#testing the Author methods
puts shamim.name
puts shamim.articles.length
puts shamim.magazines.length
puts shamim.topic_areas
puts mohamed.articles.length
puts mohamed.magazines.length
puts mohamed.topic_areas
puts piscattella.articles.length
puts piscattella.magazines.length
puts piscattella.topic_areas
puts collen.articles.length
puts collen.magazines.length
puts collen.topic_areas

# thesting the magazine methods
puts cosmopolitan.name
puts cosmopolitan.category
puts cosmopolitan.contributors.length
puts Magazine.find_by_name("Geography").name
puts vanity.article_titles
puts vanity.contributing_authors.length

# to test Article methods
puts Article.all.length






