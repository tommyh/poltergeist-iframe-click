require './iframe_button_click.rb'
require 'rspec'
require 'rack/test'
require 'capybara/rspec'
require 'capybara/poltergeist'

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.app = IframeButtonClick
Capybara.javascript_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, { :debug => true })
end

describe IframeButtonClick do
  include Rack::Test::Methods

  def app
    IframeButtonClick
  end

  describe "clicking Button B" do
    it "should redirect to Page C (when visiting Page B)", :type => :feature, :js => true do
      puts "*** visiting page"
      visit '/b'

      puts "*** clicking button"
      click_button("B Button")

      puts "*** verifying content"
      page.should have_content("Page C")
    end

    it "should redirect to Page C (when visiting Page A)", :type => :feature, :js => true do
      puts "*** visiting page"
      visit '/a'

      puts "*** within frame b"
      within_frame("b_frame") do
        puts "*** clicking button"
        click_button("B Button")
      end

      puts "*** within frame b"
      within_frame("b_frame") do
        puts "*** verifying content"
        page.should have_content("Page C")
      end

    end
  end

end