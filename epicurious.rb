require 'open-uri'
require 'nokogiri'

ingredient = 'chocolate'
url = "https://www.epicurious.com/search/#{ingredient}"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

# p html_doc
path_to_recipe = 'article h4 a'

html_doc.search(path_to_recipe).each do |element|
  # p element.attribute('href').value
  recipe_title = element.text.strip
  link = element.attribute('href').value

  puts "#{recipe_title} <https://www.epicurious.com#{link}>"
end
