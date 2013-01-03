# Description

I am using this app to track down an issue with Poltergeist/PhantomJS.

Issue:  Clicking on a button inside of an iframe (where the iframe is not positioned at 0,0) will
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

# Poltergeist debug log from rspec run

~~~
$ bundle exec rspec --format documentation iframe_button_click_spec.rb

IframeButtonClick
  clicking Button B
*** visiting page
{"name"=>"visit", "args"=>["http://127.0.0.1:51317/b"]}
{"response"=>{"status"=>"success"}}
*** clicking button
{"name"=>"find", "args"=>[".//input[./@type = 'submit' or ./@type = 'image' or ./@type = 'button'][((./@id = 'B Button' or ./@value = 'B Button') or ./@title = 'B Button')] | .//input[./@type = 'image'][./@alt = 'B Button'] | .//button[(((./@id = 'B Button' or ./@value = 'B Button') or normalize-space(string(.)) = 'B Button') or ./@title = 'B Button')] | .//input[./@type = 'image'][./@alt = 'B Button']"]}
{"response"=>{"page_id"=>1, "ids"=>[0]}}
{"name"=>"visible", "args"=>[1, 0]}
{"response"=>true}
{"name"=>"click", "args"=>[1, 0]}
{"response"=>{"status"=>"success", "click"=>{"x"=>39, "y"=>78}}}
*** verifying content
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>2, "ids"=>[0, 1, 2]}}
{"name"=>"reset", "args"=>[]}
{"response"=>true}
    should redirect to Page C (when visiting Page B)
*** visiting page
{"name"=>"visit", "args"=>["http://127.0.0.1:51317/a"]}
{"response"=>{"status"=>"success", "click"=>{"x"=>39, "y"=>78}}}
*** within frame b
{"name"=>"push_frame", "args"=>["b_frame"]}
{"response"=>true}
*** clicking button
{"name"=>"find", "args"=>[".//input[./@type = 'submit' or ./@type = 'image' or ./@type = 'button'][((./@id = 'B Button' or ./@value = 'B Button') or ./@title = 'B Button')] | .//input[./@type = 'image'][./@alt = 'B Button'] | .//button[(((./@id = 'B Button' or ./@value = 'B Button') or normalize-space(string(.)) = 'B Button') or ./@title = 'B Button')] | .//input[./@type = 'image'][./@alt = 'B Button']"]}
{"response"=>{"page_id"=>3, "ids"=>[0]}}
{"name"=>"visible", "args"=>[3, 0]}
{"response"=>true}
{"name"=>"click", "args"=>[3, 0]}
{"response"=>{"x"=>39, "y"=>78}}
{"name"=>"pop_frame", "args"=>[]}
{}
*** within frame b
{"name"=>"push_frame", "args"=>["b_frame"]}
{"response"=>true}
*** verifying content
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"find", "args"=>["./descendant-or-self::*[contains(normalize-space(.), 'Page C')]"]}
{"response"=>{"page_id"=>3, "ids"=>[]}}
{"name"=>"pop_frame", "args"=>[]}
{}
{"name"=>"reset", "args"=>[]}
{"response"=>true}
    should redirect to Page C (when visiting Page A) (FAILED - 1)

Failures:

  1) IframeButtonClick clicking Button B should redirect to Page C (when visiting Page A)
     Failure/Error: page.should have_content("Page C")
       expected #has_content?("Page C") to return true, got false
     # ./iframe_button_click_spec.rb:49:in `block (4 levels) in <top (required)>'
     # ./iframe_button_click_spec.rb:47:in `block (3 levels) in <top (required)>'

Finished in 6.32 seconds
2 examples, 1 failure

Failed examples:

rspec ./iframe_button_click_spec.rb:36 # IframeButtonClick clicking Button B should redirect to Page C (when visiting Page A)
~~~

