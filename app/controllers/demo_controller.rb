class DemoController < ApplicationController
  def index
    render('index')
    # this is how you can render templates
    # the longer version of the above line is: 
    # render(:template => 'demo/index')
    # normally this is used with if-else-condition 
  end

  # Instance Variable --- used to transfer data from controller to view, 
  # always start with @ ie, @string

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    render('hello')
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'hello')
  end

  def google_search
    redirect_to('http://www.google.com')
  end

end
