  get_info = JSON.parse open('http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=').read

    drw_numbers = []    # 이번주 당첨번호
    get_info.each do |k, v|
       drw_numbers << v if k.include? 'drwtNo'
    end
    drw_numbers.sort!
    bonus_number = get_info["bnusNo"]   #보너스번호
    
    my_num = 6.times.map{Random.rand(45)}
    my_nums = my_num.sort!
    
    drw_numbers.each_index {|x| 
      if my_nums.each_index == x
        print x
    }