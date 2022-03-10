class ParamsController < ApplicationController

  def query_params
    render json: {message: params["name".upcase]}
  end
end
