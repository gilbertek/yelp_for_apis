class ApisController < ApplicationController

  def index
    @apis = Api.last(10)
  end

  def new
    @api = Api.new
  end

  def create

    @api = Api.new(api_params)
    @api.rates.build(rate_params)

    if @api.save
      flash[:success] = "Api added successfully."
      redirect_to apis_path
    else
      render :new
    end
  end

  # private
    def api_params
      params.require(:api).permit(:name, :description, :permalink, :image, :rates_attributes => [:api_id, :rate, :id, :_destroy])
    end

    def rate_params
      params.require(:rates).permit(:rate)
    end

end
