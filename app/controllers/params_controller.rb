class ParamsController < ApplicationController

  def query_params
    render json: {message: params["name"].upcase}
  end

  def first_letter_params
    if params["name"].upcase.first == "A"
      render json: {message: "Hey your name starts with the first letter of the alphabet!"}
    end  
  end

  
end
