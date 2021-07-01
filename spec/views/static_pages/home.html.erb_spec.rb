require 'rails_helper'
require 'rack/test'
require 'rspec'
require 'rspec/rails'
require 'capybara'
require 'capybara/dsl'
require 'selenium/webdriver'
require 'webdrivers/chromedriver'

RSpec.describe "static_pages/home.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"

  let(:session) {Capybara::Session.new(:rack_test)}

  context('visiting the page') do
    it("displays the pages header") do
      session.visit("/static_pages/home")
      expect(session).to_not(have_css('h1', text: "Sample App"))
    end
  end
end
