class GamesController < ApplicationController


    def first_letter_params
      if params["name"].upcase.first == "A"
        render json: {message: "Hey your name starts with the first letter of the alphabet!"}
      else
        render json: {message: "Hey your name doesn't start with the first letter of the alphabet"}
      end 

    
    render json: {message: "Your name is #{user_given_name}. #{output_message}"}
  end

  def number_game
    user_number_choice = params["user_number"].to_i
    winning_number = 36
    if user_number_choice < winning_number
      output_message = "You guessed too low, guess higher!"
    elsif user_number_choice > winning_number
      output_message = "You guesed too high, guess lower!"
    else
      output_message = "You guessed it! You win!"
    end
    render json: {message_to_user: output_message}
  end

end