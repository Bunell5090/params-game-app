Rails.application.routes.draw do
  
  get "/query_params" => "params#query_params"
  get  => "params#"
  get "/url_segment_params/:variable" => "params_examples#url_segment"
  get "/first_letter_params", controller: "games", action: "first_letter_params"
  get "/number_game" => "games#number_game"
end
