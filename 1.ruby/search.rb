require 'Launchy'

uri = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query="
keywords = ["악동뮤지션", "디노사우르스", "외국인의고백"]


keywords.each do |keyword|
	Launchy.open(uri + keyword)
end


for keyword in keywords
	Launchy.open(uri + keyword)
end

i = 0
while i < 3
   Launchy.open(uri + keywords[i])
   i += 1   
end