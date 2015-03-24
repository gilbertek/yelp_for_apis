require 'rails_helper'

describe Api, type: :model do

  let!(:api) {
    Api.create!(
      :name => "Test",
      :description => 'This is a test api',
      :image => 'http://placeholder.com/24x24',
      :permalink => 'http://localhost.com/api/v1/tests'
    )
  }

  describe "it has a permalink" do
    subject { api.has_permalink? }

    context "when api has a permalink" do
      it { should eq true }
    end

    context "when api does not have a permalink" do
      before { api.permalink = nil }
      it { should eq false }
    end
  end


end
