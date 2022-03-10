Rails.application.routes.draw do
  
  get "/query_params" => "params#query_params"
  get "/first_letter_params" => "params#first_letter_params"
end
