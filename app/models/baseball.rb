class Baseball < ActiveRecord::Base
  
  def self.set_new_number
    candidate = (1..9).to_a
    picked = candidate.sample(3)
    self.create(number: picked.join("").to_i)
  end
  
  def self.get_current_number
    return self.last.number
  end
  
  def self.check_this(input)
    current_number = self.get_current_number
    answer_array = current_number.to_s.split("")
    input_array = input.to_s.split("")
    strike = 0
    ball = 0
    out = true
    
    for i in 0..2
      if answer_array.include? input_array[i]
        if answer_array[i] == input_array[i]
          strike = strike + 1
          out = false
        else
          ball = ball + 1
          out = false
        end
      end
    end
    
    if out
      return "Out!!"
    else
      if strike == 3
        return "You win!"
      else
        return "#{strike} strikes and #{ball} ball"
      end
    end
  end
end