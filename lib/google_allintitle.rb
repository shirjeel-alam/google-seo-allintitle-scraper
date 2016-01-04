require 'mechanize'
mechanize = Mechanize.new
url = 'http://www.google.com/search?q=allintitle:%22ruby%20developer%20new%20york%22'

page = mechanize.get(url)
while page.link_with(text: 'Next').present? do
  page = page.link_with(text: 'Next').click
end
result = page.css('#resultStats').text
result = page.split[3].to_i

puts "Result: #{results}"