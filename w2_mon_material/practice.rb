score = {
	"A+" => 4.5,
	"A" => 4.0,
	"B+" => 3.5,
	"B" => 3.0,
	"C+" => 2.5,
	"C" => 2.0,
	"D" => 1.0,
	"F" => 0,
}

hyunk=[]
for i in 1..6
	hyunk.push(score[gets.chomp])
end

print hyunk #성적 입력받아 프린트하기

count=[0,0]

hyunk.each do |a|
	if a >=4.0
		count[0]+=1
	elsif a <=2.5
		count[1]+=1
	end
end

print "현경이가 a를 받은 과목의 수는 #{count[0]}개, 재수강은 #{count[1]} 입니다."

def avg(input)
	sum=0
	input each do |a|
		sum+=a
	end

	return sum/input.length
end

if avg(hyunk) >=4.0
	print "성적장학금"
elsif avg(hyunk) < 2.0
	print "학사경고"
end


hyunkyung=[]

def score(array,n)
	for i in 1..n
	array[gets.chomp]
end



def grade(array,n)
	A=[]
	F=[]
	sum.A=0
	sum.F=0
	for i in 1..n
	array[gets.chomp]
		if array[i]>4.0
			A[0]+=1
			sum.A+=1
		elsif array[i]<2.0
			F[0]+=1
			sum.F+1
		end
	return(A.count,F.count)
	print "#{A.count},#{F.count}"
	print "#{sum.A/A.length},#{sum.F/F.length}"
end






