class ApisController < ApplicationController

  def index
    @apis = Api.all
  end
end
