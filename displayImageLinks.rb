require 'rubygems'
require 'nokogiri'
require 'open-uri'

url= "http://localhost/test/index.html"
data= Nokogiri::HTML(open(url))


# to view img tag links
links= data.css("img")
len= links.length
for i in 0...len
       puts links[i]["src"]
end


# to view anchor tag links
links= data.css("a")
len= links.length
for i in 0...len
       puts links[i]["href"]
end

