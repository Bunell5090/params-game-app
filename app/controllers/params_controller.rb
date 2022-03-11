class ParamsController < ApplicationController

  def query_params
    render json: {message: params["name"].upcase}
  end

  

  def url_segment
    input_value = params["variable"]
    render json: {message: "The url segment is #{input_value}"}
  end

  def body_segment
    input_email = params["user_email"]
    input_user = params["username"]
    input_ssn = params["user_ssn"]
    input_pass = params["password"]

    if input_user == "hugh" && input_pass == "swordfish"
      render json: {message: "Valid credentials"}
    else
      render json: {message: "Invalid credentials"}    
  end

   

    
  end


end
