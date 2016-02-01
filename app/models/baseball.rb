class Baseball < ActiveRecord::Base
  
  def self.set_new_number
    candidate = (1..9).to_a
    picked = candidate.sample(3)
    self.create(number: picked.join("").to_i)
  end
  
  def self.get_current_number
    return self.last.number
  end
  
  def check_correct(input)
  end
end