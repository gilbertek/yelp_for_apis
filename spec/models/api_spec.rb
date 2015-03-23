require 'rails_helper'

RSpec.describe Api, type: :model do

  before :each do
    @api = Api.new(:name => "Test"
      :description => 'This is a test api'
      :image => 'http://placeholder.com/24x24'
      :permalink => 'http://localhost.com/api/v1/tests'
    )
  end

  it "should have an unique permalink" do
    expect(subject)
  end
end
