class Baseball < ActiveRecord::Base
  
  def self.set_new_number
    candidate = (1..9).to_a
    picked = candidate.sample(4)
    self.create(number: picked.join("").to_i)
  end
  
  def self.get_current_number
    return self.last.number
  end
  
  def self.call_strike(num)
    strike = 0
    ball = 0
    arr_num = num.split("")
    arr_answer = self.last.number.to_s.split("")
    
    # strike 개수 확인
    for i in 0..3 
      if arr_num[i] == arr_answer[i]
        strike = strike + 1 
      end
    end
    
    # 같은 숫자 있는지 확인 (ball + strike)
    for i in 0..3
      for j in 0..3
        if arr_num[i] == arr_answer[j]
          ball = ball + 1
        end
      end
    end
    
    # ball 개수 추출 
    ball = ball - strike
    
    if strike == 4
      return "Correct!!"
    elsif ball > 0
      return "#{strike} strike & #{ball} ball"
    else
      return "Out!!"
    end
  end
  
end
