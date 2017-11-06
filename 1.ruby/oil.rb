# in command line the below should be executed
# gem install httparty

require 'httparty'
require 'nokogiri'

uri = "http://info.finance.naver.com/marketindex/?tabSel=gold#tab_section"
response = HTTParty.get(uri)  #By HTTParty,getting information from URL
text = Nokogiri::HTML(response.body)  #Nokogiri to parse information for better search
kospi=text.css('#content > div:nth-child(3) > table > tbody > tr:nth-child(1) > td:nth-child(3)') #.css, selector is chosen. 
puts kospi.text #.text for getting information within <tag>

#css nogokiri 등을 적어 놓는다. 밑에 