class BaseballController < ApplicationController
  def index
    if Baseball.all.empty?
      @number = nil
    else
      @number = Baseball.get_current_number
    end
  end
  
  def gamestart
    new_num = Baseball.set_new_number
    
    redirect_to '/'
  end
  
  def check
    user_num = params[:test]
    
    render json: { result: Baseball.call_strike(user_num) }
  end
end
