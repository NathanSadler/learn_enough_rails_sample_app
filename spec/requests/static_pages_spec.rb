require 'rails_helper'
require 'pry'

RSpec.describe "StaticPages", type: :request do
  describe "GET /home" do
    it "returns http success" do
      get "/static_pages/home"
      expect(response).to have_http_status(:success)
      binding.pry
    end
  end

  describe "GET /help" do
    it "returns http success" do
      get "/static_pages/help"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about" do
    it("should get about") do
      get "/static_pages/about"
      expect(response).to(have_http_status(:success))
    end
  end

end
