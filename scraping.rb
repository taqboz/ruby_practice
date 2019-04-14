require 'mechanize'
agent = Mechanize.new
page = agent.get('https://app-mooovi.herokuapp.com/works/third_scraping')
page.search('etc. div').each do |ele|
  puts ele.inner_text
end