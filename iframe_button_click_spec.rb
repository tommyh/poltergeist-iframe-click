require './iframe_button_click.rb'
require 'rspec'
require 'rack/test'
require 'capybara/rspec'
require 'capybara/poltergeist'

RSpec.configure do |config|
  config.include Capybara::DSL
end

set :environment, :test

Capybara.app = IframeButtonClick
Capybara.javascript_driver = :poltergeist

describe IframeButtonClick do
  include Rack::Test::Methods

  def app
    IframeButtonClick
  end

  describe "clicking Button B" do
    it "should redirect to Page C (when visiting Page B)", :type => :feature, :js => true do
      visit '/b'
      click_button("B Button")
      page.has_content?("Page C")
    end

    it "should redirect to Page C (when visiting Page A)", :type => :feature, :js => true do
      visit '/a'
      within_frame("b_frame") do
        click_button("B Button")
        page.has_content?("Page C")
      end
    end
  end

end