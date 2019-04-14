require "mechanize"
agent = Mechanize.new
page = agent.get("http://review-movie.herokuapp.com/products/422")
elements = page.search('.entry-content img')
elements.each do |ele|
puts ele.get_attribute('src')
end