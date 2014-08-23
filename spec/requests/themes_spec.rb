require 'rails_helper'

RSpec.describe "Themes", :type => :request do
  describe "GET /themes" do
    it "works! (now write some real specs)" do
      get themes_path
      expect(response.status).to be(200)
    end
  end
end
