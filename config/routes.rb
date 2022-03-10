Rails.application.routes.draw do
  
  get "/query_params" => "params#query_params"
  get "/first_letter_params" => "params#first_letter_params"
  get "/url_segment_params/:variable" => "params_examples#url_segment"
  get "/name", controller: "games", action: "name_game"
  get "/number_game" => "games#number_game"
end
