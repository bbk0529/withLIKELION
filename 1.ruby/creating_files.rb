#1. 특정폴더로 들어간다.
#2. 파일을 생성한다. 
#3. 내용을 작성한다. 


puts Dir.pwd
Dir.chdir("src")
puts Dir.pwd
#파일을 읽고 쓰고 지우고 등등 할 때 모두 File.open
#30개의 파일 
#1.txt ~ 30.txt
#1.txt -> "1번째 내용", 2.txt -> "2번째 내용"" .... 30.txt"

# SOLUTION 1
# 30.times do |n|
#     filename = (n+1).to_s + ".txt"
#     text = (n+1).to_s + "번째 내용"
#     out_file = File.new(filename, "w")
#     out_file.puts(text)
#     out_file.close
# end

# SOLUTION 2
# limit = 30;
# for n in 1..limit
#   filename = n.to_s + ".txt"
#     text = n.to_s + "번째 내용"
#     out_file = File.new(filename, "w")
#     out_file.puts(text)
#     out_file.close
# end

#강사님 솔루션
30.times do |i|
    i +=1
    File.open(i.to_s + ".txt", "w") do |file|
        file.write(i.to_s + "번째내용~!!!!")
    end
end