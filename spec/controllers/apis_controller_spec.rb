require 'rails_helper'

RSpec.describe ApisController, type: :controller do

  it "should get the list of apis" do

    get '/'
    expect(last_response).to be 200
  end
end
