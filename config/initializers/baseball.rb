def check_this(current_number, input)
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
