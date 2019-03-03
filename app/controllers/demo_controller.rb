class DemoController < ApplicationController
  def index
    render('index')
    # this is how you can render templates
    # the longer version of the above line is: 
    # render(:template => 'demo/index')
    # normally this is used with if-else-condition 
  end

  def hello
    render('hello')
  end
end
