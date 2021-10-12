require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com
ingredient = 'chocolate'
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.open(url).read

# p html_file
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.standard-card-new__article-title').each do |element|
  # p element
  puts element.text.strip
  puts element.attribute('class').value
end
