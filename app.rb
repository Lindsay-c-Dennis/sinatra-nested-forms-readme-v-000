require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :new
  end 
  
  post '/' do 
    @student = Student.new(params[:student])
    
    erb :student 
  end 

end
