require 'rails_helper'

RSpec.describe ApisController, type: :controller do

  describe "GET index page" do
    it "should get the list of apis" do
      get :index
      expect(response.status).to be 200
    end
  end


end
