# in command line the below should be executed
# gem install httparty

require 'httparty'
require 'nokogiri'

uri = "http://finance.naver.com/sise/"
response = HTTParty.get(uri) 
#http 보내서 가져온다. 
text = Nokogiri::HTML(response.body) 
#우리가 보기 힘드니까 노코기리를 통해 예쁘게 만들어서
kospi=text.css('#KOSPI_now')
#원하는 정보만 뽑아서
puts kospi.text