
#파일명 바꾸기
#1. 폴더 안으로 들어간다.
Dir.chdir("src")
#2. 폴더 안을 돌면서 파일들의 이름을 가져온다. 
files =[]
#3. files 배열 안에 바꾸고자 하는 모든 파일의 이름을 넣는다. 
files = Dir.entries(Dir.pwd).reject  {|name|name[0]=='.'}
puts files
files.each do |f|
    File.rename(f, "BK_" + f)
end
#path = "/workspace/ruby/1.ruby/src/"
#3. 각각의 이름을 "1.TXT " --> "BKINTERNATIONAL.TXT"

# #MY SOLUTION
# puts Dir.pwd
# Dir.chdir("src")

# path = Dir.pwd
# Dir.open(path).each do |f|
#     next if f=="."  || f==".."
#     newname = "BK INTERNATIONAL_" + f.to_s
#     puts newname
#     File.rename(f, newname) 
# end
