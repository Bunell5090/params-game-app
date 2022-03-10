class ParamsController < ApplicationController

  def query_params
    render json: {message: params["name"].upcase}
  end

  

    def url_segment
      input_value = params["variable"]
      render json: {message: "The url segment is #{input_value}"}
    end

   

    
  end


end
