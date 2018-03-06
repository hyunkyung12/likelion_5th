=begin

자신만의 메소드 사전을 만듭니다!

def 이름_메소드명     #메소드에 대한 설명
  메소드사용
  #=> 예상되는결과
end

다음과 같은 형식으로 아래의 #메소드작성 주석뒤에 코드를 작성합니다.
Ruby On Rails를 사용하면서 가장많이 사용하는 Ruby의 요소는 method 입니다.
method를 많이 알아둔다면 그만큼 코딩이 쉬워질거예요.
가능한 많은 메소드를 직접 irb로 써보세요.
이번과제는 여러분이 공부하는만큼 스스로 가져가는게 많은 과제일거예요.
화이팅하세요! 과제 형식이나 버그에 관련해서는 언제나 질문하세요.

=end

#매번 새로운 변수를 만들기 귀찮다면 아래를 사용해도 되고 각자 만들어 사용해도 됩니다.
var_integer = 123
var_string = "likelion"
var_boolean_1 = true
var_boolean_2 = false
var_array = [1,2,3,4,5]
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}

#메소드 만들기 예시
def miyeon_length   #배열이나 문자열의 길이를 측정하는 메소드
  a = [1,2,3]
  b = "likelion"
  puts a.length
  puts b.length
  # => 3
  # => 8
end

#메소드 주석 (여기부터 메소드를 작성하세요.)
def cheers
  puts "beers! yeah!"
end

def reverse # 문자열의 순서를 바꿔주는 함수
  a="figthing"
  puts a.reverse
  # => gnihtgif
end

def upcase # 문자열을 대문자로 바꿔주는 함수
  a="hyunkyung"
  puts a.upcase
  # => HYUNKYUNG
end

def downcase # 문자열을 소문자로 바꿔주는 함수
  a="HYUNKYUNG"
  puts a.downcase
  # => hyunkyung
end

def capitalize # 첫번째 문자를 대문자로 바꿔주는 함수
  a="hyunkyung"
  puts a.capitalize
  # => Hyungkyung
end

# def include
# 	puts "문자열을 입력해 주세요!"
# 	a=gets.chomp
# 	a.include?"f"
#    #=> false
# end 
# 왜 안되는지 모르겠다...

def gsub # 문자 바꿔주기
  puts "hyunkyung".gsub(/u/,"o")
  #=> hyonkyong
end

def split # 문자 분리하기
  puts "hyun kyung".split
  # => [ "hyun",
  # 	"kyung"]
end

def hk_put 
	puts "puts 한줄띄기 포함"
end

def hk_print
	print "print 한줄띄기 미포함"
end

def while # 조건이 참일동안 실행
	n=0
	while n<5
		puts "lion"
		n+=1;
	end
end

def until # 
	n=0
	until n==5
		puts n
		n+=1
	end
end

def loop 
	n=0
	loop do
		puts n
		n+=1
		break if n>5
	end		
end

def for
	n=0
	for i in 1..5
		puts n
		n+=1
	end
end

def if
	puts "1부터 3사이의 정수를 입력하세요"
	a=gets.chomp
	if a==1
		puts "1이에요"
	elsif a==2
		puts "2에요"
	elsif a==3
		puts "3이에요"
	else 
		puts "바보에요?"
	end
end

def unless
	unless 1>2
		puts "unless는 헷갈려요"
	else
		puts "if가 좋아요"
	end
end

def case
	puts "1을 입력하세요"
	a=gets.chomp
	case a
	when a==1
		puts "1이에요"
	else a==2
		puts "말좀들어요"
	end
end

def push # 배열이나 문자열에 추가하는 함수
  a=["l","i","o"]
  a.push("n")
  puts a
  # => lion
end 

def unshift
	a=["i","o","n"]
	a.unshift("l")
	puts a
end

def shift
	a=["python","ruby"]
	a.shift(1)
	puts a
end

def pop
	a=["ruby","python"]
	a.pop(1)
	puts a
end

def sort
	a=[2,8,7,1]
	b=a.sort
	puts b
end

def sort!
	a=[2,8,7,1]
	a.sort!
	puts a
end

# def Hashnew
# 	a = Hash.new
# 	a["수통"]="A+"
# 	a["회귀"]="A+"
# 	puts a
# end
# 왜 수통글자가 안나오는지..

# def sym
# 	b = Hash.new
# 	b["자료구조".to_sym]="A+"
# 	puts b
# 
# 왜 자료구조 글자가 안나오는지..

def eachdo
	a=[1,2,3]
	a.each do |n|
		n*=2
		puts n
	end
end

def eachhash
	a = {
		:수통 => "A+",
		:회귀 => "A+"
	}

	a.each do |key,value|
		puts key
		puts value
	end
end

def times
	3.times {puts "lion"}
end

def select
	animal = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	b = Hash.new
	b = animal.select{|name,type| type=="육식"}
	puts b
end
# 또 한글이 안나오네..

def eachkey
	animal = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	animal.each_key {|key| puts key }
end

def eachvalue
	animal = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	animal.each_value {|value| puts value }
end

# def delete
# 	animal = {
# 		:사자 => "육식",
# 		:호랑이 => "육식",
# 		:코끼리 => "초식",
# 		:토끼 => "초식"
# 	}
# 	animal.delete(:사자)
# 	puts animal
# end
# 한글이 안나옴..

def upto
	1.upto(10) {|i| print i, "~"}
end

def downto
	10.downto(1) {|i| print i, "~"}
end

def respond
	a=["아","졸","려"].respond_to?(:push)
	puts a
end

def collect 
	a=["수통","회귀","자구","프언"]
	b=a.collect{|x| x+"=A+"}
	puts b
end

def withindex
	a=[1,2,3,4]
	b=a.collect.with_index{|x,i| x+i }
	puts b
end

# def floor
# 	a=(3.14159).floor(3)
# 	puts a
# end
# # 왜...?

def isa?
	a="현경".is_a? String
	puts a
end



# 참고자료
# https://docs.ruby-lang.org/en/2.0.0/Hash.html#method-c-5B-5D

#Hash 관련

def assoc #괄호와 키를 비교, 참이면 반환 거짓이면 null
	animal = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	a=animal.assoc(:호랑이) 
	puts a     # 욱식
end

def clear #해시안의 모든 값 삭제
	animal = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	animal.clear
	puts animal
end

def default1 # key값이 없으면 object값 반환? 잘 모르겠음...
	h = Hash.new {|h,k| h[k] = k.to_i*10}  
	puts h.default          # nill                      
	puts h.default(1)  		# 10
	puts h.default(2)       # 20                       
	puts h.default(3)   	# 30
end

def default2 # 입력한값과 일치하는 key가 없으면 default 반환
	h = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	h.default="잡식"
	puts h[:사자] # 육식
	puts h[:돼지] #잡식
end

# def defaultproc
# 	h.default_proc = proc do |hash,key|
# 		hash[key] = key+key
# 	end
# 	puts h["2"]
# 	puts h["lion"]
# end

def delete # 특정키값을 삭제
	h = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}

	h.delete(:사자)
	puts h
end

# def deleteif
# 	h = {
# 		1: "a"
# 		2: "b"
# 		3: "c"
# 	}

# 	h.delete_if{|key,value| key >= 2 }
# 	puts h
# end	

def empty # 비었니?
	a = []
	b = a.empty?
	puts b
end

def fetch # 대응하는 key값이 있으면 value 반환, 아니면 오류
		  # dafault가 있으면 default로 반환
	h = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	# h.default="잡식"
	puts h.fetch(:사자)
	# puts h.fetch(:돼지)	디폴트를 왜 반환하지 않는지
end

def flatten #해시를 배열으로, to_a도 같은기능
	h = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	puts h.flatten
end

def haskey #key가 있나 검색 , t/f 반환
	h = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}	
	puts h.has_key?(:사자)
end

def hasvalue #key가 있나 검색, t/f 반환
	h = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}	
	puts h.has_value?("육식")
end

def invert #key와 value 를 바꿔 새로운 해시 생성
	h = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	a = h.invert
	puts a ####왜 제대로 출력을 못하지..
end

def merge # 해시 합치기 , !를 붙이면 원본수정
	h1 = {
		:사자 => "육식",
		:호랑이 => "육식"
	}
	h2 = {
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	h2 = h1.merge(h2) # 사본을 저장할 변수 필요
	puts h2
	h1.merge!(h2)
	puts h1
end

def rehash # 넣은 값을 임시저장, 원본이 바뀌지는 않음
	a = [ "a", "b" ]
	c = [ "c", "d" ]
	h = { a => 100, c => 300 }
	puts h[a]       # 100
	a[0] = "z"
	puts h[a]       # nil
	puts h.rehash   # {["z", "b"]=>100, ["c", "d"]=>300}
	puts h[a]       # 100
end

# def repalce # 다른해시로 교체
# 	h = { a => 100, c => 300 }
# 	h1 = h.replace({"c" => 300, "d" => 400})
# 	puts h1	
# end
# 왜 꺼지지...

def valueat # key값에 맞는 value반환
	h = {
		:사자 => "육식",
		:호랑이 => "육식",
		:코끼리 => "초식",
		:토끼 => "초식"
	}
	puts h.values_at(:사자,:호랑이)	
end

# Array 관련

def arryat # array의 인덱스를 반환
	a=[1,2,3,4,5]
	puts a.at(0)
end

def arrayfetch # array 범위를 넘는 인덱스는 오류, 그때 출력할 문장 지정할 수 있음
	a=[1,2,3,4,5]
	puts a.fetch(100,"out of boundary")
end

def arraytake # 괄호까지의 수 반환
	a=[1,2,3,4,5,6,7,8,9,10]
	puts a.take(5)
end

def arraydrop # 괄호 이상의 수 반환
	a=[1,2,3,4,5,6,7,8,9,10]
	puts a.drop(3)
end

def unshift # 배열의 맨앞에 넣기
	a=[1,2,3,4,5,6,7,8,9,10]
	a.unshift(0)
	puts a
end

def insert # 배열에서 원하는 인덱스에 값넣기, 여러개도 가능
	a=[1,2,3,4,5,6,7,8,9,10]
	a.insert(2,3)
	puts a
end

def deleteat # 배열에서 원하는 인덱스의 값 지우기
	a=[1,2,3,4,5,6,7,8,9,10]	
	a.delete_at(2)
	puts a
end

def compact # 배열에서 nill값 지우기, !붙이면 원본 수정
	a=[1,2,3,4,5,6,7,8,9,10,nil]
	b = a.compact
	puts b
	a.compact!
	puts a
end

def uniq # 중복값 지우기
	a = [1,2,3,4,5,6,7,8,9,10,3]
	puts a.uniq
end

def reverse # 역순으로 바꿔주기
	words = %w[hyunkyung] # %w : 배열에서 쉼표대신 "" 로 배열을 표기하는 방법
	str = ""
	words.reverse_each { |word| str += "#{word.reverse} " }
	puts str 
end

# reverse 신기하니까 다시보기

def map # each 랑 비슷 ?? 원본 변경하려면 !
	a = [1,2,3,4,5,6,7,8,9,10,3]
	b = a.map{|x| 2*x }
	puts b
	a.map! {|x| 2*x }
	puts a
end

def reject # 조건에 맞는것을 버려라! 
	a = [1,2,3,4,5,6,7,8,9,10,3]
	b = a.reject{|x| x<4}
	puts b
end

def dropwhile # 조건에 맞는것을 버려라! 그런데 앞에만 적용 ?!
	a = [3,2,6,7,8,9,2,3,10,3]
	b = a.drop_while{|x| x<4}
	puts b
end

def deleteif # 조건에 맞는것을 지워라 , 원본 수정
	a = [3,2,6,7,8,9,2,3,10,3]
	puts a.delete_if{|x| x<4}	
end

def keepif # 조건에 맞는것을 남겨라 , 원본 수정
	a = [3,2,6,7,8,9,2,3,10,3]
	puts a.keepif_if{|x| x<4}	
end

## 신기한것 또보기 Array.new

def arraynew1
	a=Array.new(2,Hash.new) # 두개의 해시를 만들어라, 변경시 두개 동시 수정
	a[0]['cat'] = 'feline'
	puts a # => [{"cat"=>"feline"}, {"cat"=>"feline"}]
end

def arraynew2
	a = Array.new(2) { Hash.new } # 두개의 해시를 만들어라, 변경시 인덱스 지정
	a[0]['cat'] = 'feline'
	puts a # => [{"cat"=>"feline"}, {}]
end

def concat # 배열 합치기
	puts ["li","ke"].concat(["li","on"])
	a = [3,2,6,7,8,9,2,3,10,3]	
	a.concat([4,5])
	puts a
end

def abbrev #문자열을 다양한 패턴으로 보여줌 ?
	require 'abbrev' # 모듈을 로드해줘야한다고 함!
	puts Abbrev.abbrev(['car', 'cone'])
end

def at # 인덱스에 있는것을 가져와라
	a = [3,2,6,7,8,9,2,3,10,3]	
	puts a.at(0)
end

def combination # 주어진 갯수만큼 조합을 만들어줌
				# 주석처럼 출력되어야 하는데 안되는 이유?
	a = [1, 2, 3, 4]
	puts a.combination(1).to_a  #=> [[1],[2],[3],[4]]
	puts a.combination(2).to_a  #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
end	

def cycle # 괄호의 숫자만큼 반복, 숫자가 없으면 무한루프
	a = [1,2,3,4]
	a.cycle(2) {|x| puts x}
end 

def eachindex # index로 조건 적용
	a = [1,2,3,4]
	a.each_index{|x| print x, if
	end

# 신기하니까 다시보기
def fill # 배열안의 요소 교체하기
	a = [ "a", "b", "c", "d" ]
	puts a.fill("x")              #=> ["x", "x", "x", "x"]
	puts a.fill("z", 2, 2)        #=> ["x", "x", "z", "z"]
	puts a.fill("y", 0..1)        #=> ["y", "y", "z", "z"]
	puts a.fill { |i| i*i }       #=> [0, 1, 4, 9]
end 

def first # 처음부터 , 괄호안의 숫자까지 반환
	a = [1,2,3,4]
	puts a.first
	puts a.first(2)
end

# def my_game
#     my_num = 6.times.map{Random.rand(45)}
# end



#여기 이 두 주석 사이에 메소드를 작성하시면 됩니다~

puts "==================================="
puts "=========메소드 사전만들기========="
puts "==================================="

dic_flag = 0

while dic_flag == 0
  puts "1. 검색         2. 종료"

  user_input = gets.chomp.to_i

  case user_input
  when 1
    puts "검색할 메소드를 입력하세요"
    send(gets.chomp)
  when 2
    puts "종료합니다"
    dic_flag += 1
  else
    puts "1과 2중 다시 입력해주세요."
  end
end


