class HomeController < ApplicationController
  
  def index
  end
  
  def books
    books = [ 
      {'title' => 'Great Expectations', 'author' => 'Dickens'},
      {'title' => 'Foundation', 'author' => 'Asimov'},
      {'title' => 'Treasure Island', 'author' => 'Stephenson'}
    ]
    render :json => books.to_json, :status => 200 and return
  end
  
end
