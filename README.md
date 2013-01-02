# Description

I am using this app to track down issues with Poltergeist/PhantomJS.

Issue #1:  Clicking on a button inside of an iframe (where the iframe is not positioned at 0,0) will
have incorrect click coordinates.  Therefore the button won't be clicked.



# Installation

~~~
brew install phantomjs
bundle install
~~~

# Run the rspec tests

~~~
bundle exec rspec iframe_button_click_spec.rb
~~~

# Run the app in a browser

~~~
bundle exec shotgun
# go to http://127.0.0.1:9393/a
~~~


