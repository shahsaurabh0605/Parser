require 'rubygems'
require 'nokogiri'
require 'open-uri'

url= "http://localhost/test/index.html"
data= Nokogiri::HTML(open(url))
links= data.css("img")
extension= '.jpg'

# For downloading images
Nokogiri::HTML(open(url)).xpath("//img/@src").each do |src|
        File.open(File.basename(src.value, File.extname(src.value)) + extension,'wb'){ |f|
    f.write(open(src.value).read)
 }
end

