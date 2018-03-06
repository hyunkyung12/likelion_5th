=begin

한 학기가 끝난 지금 미연이의 성적을 알아보자!
미연이는 이번에 6개의 전공 수업을 들었다. (6개의 수업 성적을 직접 입력받아보자.)
각 학점의 점수는 Hash에 저장하여라.
("A+": 4.5 "A": 4.0 "B+": 3.5 "B": 3.0 "C+": 2.5 "C": 2.0 "D": 1.0 "F": 0)

미연이의 6개의 과목 성적 중 재수강이 필요한 과목(C+이하)과 우수한 과목(A이상)의 수를 출력해보자.
평점을 구하는 함수를 구현해서 출력해보자.
그리고 미연이의 평점과 미연이의 평점이 학사경고(2.0)인지, 성적장학금(4.0)을 받을 수 있는지 출력해보자.

=end

score1=gets.chomp
score2=gets.chomp
score3=gets.chomp
score4=gets.chomp
score5=gets.chomp
score6=gets.chomp

score_h=Hash.new
score_h["수업1"]=score1
score_h["수업2"]=score2
score_h["수업3"]=score3
score_h["수업4"]=score4
score_h["수업5"]=score5
score_h["수업6"]=score6



def filter (score)
	if 4.0<score<=4.5
		print "A+"
	elsif 3.5<score<=4.0
		print "A"
	elsif 3.0<score<=3.5
		print "B+"
	elsif 2.5<score<=3.0
		print "B"	
	elsif 2.0<score<=2.5
		print "C+"
	elsif 1.0<score<=2.0
		print "C"
	elsif 0.0<score<=1.0
		print "D"	
	else score==0.0
		print "F"	
	end	
end

score_h.each do |key,value|
	if value<3.0
	print value
	end
end

score_h.each do |key,value|
	if value>=4.0
	print value
	end
end
=begin
sum=0

score_h.each do |key,value|
	sum+=value
	sum1=sum/6
	if sum1<2.0
		puts "학사경고"
	elsif sum>=4.0
		print "장학금"
	else
		print "힘내요"
	end
end
=end
sum=0
value_s=score_h.each_value{|value| sum+=value}
puts sum/6




