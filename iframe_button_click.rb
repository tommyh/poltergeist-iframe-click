# Usage:
# brew install phantomjs
# bundle install
# bundle exec shotgun iframe_button_click.rb
# bundle exec rspec iframe_button_click_spec.rb

require 'sinatra'

class IframeButtonClick < Sinatra::Base

  get '/a' do
    code = ''
    code += '<h1>Page A</h1>'
    code += '<iframe src="/b" name="b_frame" width=500 height=500></iframe>'
    erb code
  end

  get '/b' do
    code = ''
    code += '<h1>Page B</h1>'
    code += '<form action="/c" method="post"><input id="button" name="commit" type="submit" value="B Button"></form>'
    erb code
  end

  post '/c' do
    erb '<h1>Page C</h1>'
  end

end