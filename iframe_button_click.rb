require 'sinatra/base'

class IframeButtonClick < Sinatra::Base

  get '/a' do
    code = ''
    code += '<h1>Page A</h1>'

    # NOTE: Making the "b_frame" be positioned to the top will make the "click coordinates" correct, so the test will pass
    #code += '<iframe src="/b" name="b_frame" width=500 height=500 style="position: absolute; top: 0; left: 0; border: 0;"></iframe>'

    # NOTE: Making the "b_frame" be positioned anywhere but the top will make the "click coordinates" incorrect, so the test will fail
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