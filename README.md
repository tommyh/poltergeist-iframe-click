# Description

I am using this app to track down issues with Poltergeist/PhantomJS.

Issue #1:  Clicking on a button inside of an iframe (where the iframe is not positioned at 0,0) will
have incorrect click coordinates.  Therefore the button won't be clicked.



# Installation

~~~
brew install phantomjs
bundle install
~~~


# Run app for browser

~~~
bundle exec rackup -p 4567
# go to http://localhost:4567/a
~~~


# Run rspec tests

~~~
bundle exec rspec iframe_button_click_spec.rb
~~~