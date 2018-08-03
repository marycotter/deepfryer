require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :home
  end
  
  get '/home' do
    erb :home
  end
  
  get '/memequiz' do
    erb :memequiz
  end
  
  get '/about' do
    erb :about
  end
  
  get '/deepfryer' do
    erb :deepfryer
  end
  
  post '/imagefinal' do
    print params.to_s
    @link = params[:link]
    @height = params[:height] 
    if @height == ""
      @height = "800"
    end
    @width = params[:width]
    if @width == ""
      @width = "800"
    end
    @color = params[:color]
    @color2 = params[:color2]
    if @color == ""
      @color = @color2
    end
    erb :imagefinal
  end
  
  get "/tutorial" do
    erb :urltutorial
  end
  
  get "/dimensions" do
    erb :dimensionstutorial
  end
  
  # Add your post route and action below
  post "/quiz-results" do
    result = params.values
    if ((result[0] == "haha" && result[1] == "facebook" && result[2] == "chill")||(result[0] == "cringe" && result[1] == "facebook" && result[2] == "silly") || (result[0] == "cringe" && result[1] == "insta" && result[2] == "chill"))
      erb :result1
    elsif ((result[0] == "haha" && result[1] == "facebook" && result[2] == "mysterious")||(result[0] == "cringe" && result[1] == "insta" && result[2] == "mysterious") || (result[0] == "cringe" && result[1] == "twitter" && result[2] == "silly"))
      erb :result2
    elsif ((result[0] == "what" && result[1] == "insta" && result[2] == "mysterious")||(result[0] == "haha" && result[1] == "insta" && result[2] == "mysterious") || (result[0] == "haha" && result[1] == "insta" && result[2] == "chill"))
      erb :result3
    elsif ((result[0] == "what" && result[1] == "facebook" && result[2] == "chill")||(result[0] == "haha" && result[1] == "facebook" && result[2] == "silly") || (result[0] == "cringe" && result[1] == "facebook" && result[2] == "mysterious"))
      erb :result4
    elsif ((result[0] == "what" && result[1] == "facebook" && result[2] == "mysterious")||(result[0] == "what" && result[1] == "insta" && result[2] == "chill") || (result[0] == "cringe" && result[1] == "insta" && result[2] == "silly") || (result[0] == "cringe" && result[1] == "twitter" && result[2] == "mysterious"))
      erb :result5
    elsif ((result[0] == "what" && result[1] == "facebook" && result[2] == "silly")||(result[0] == "what" && result[1] == "twitter" && result[2] == "chill") || (result[0] == "haha" && result[1] == "twitter" && result[2] == "silly") || (result[0] == "haha" && result[1] == "twitter" && result[2] == "chill"))
      erb :result6
    elsif ((result[0] == "what" && result[1] == "twitter" && result[2] == "silly")||(result[0] == "what" && result[1] == "twitter" && result[2] == "mysterious") || (result[0] == "haha" && result[1] == "insta" && result[2] == "silly") || (result[0] == "cringe" && result[1] == "facebook" && result[2] == "chill"))
      erb :result7
    elsif ((result[0] == "what" && result[1] == "insta" && result[2] == "silly")||(result[0] == "haha" && result[1] == "twitter" && result[2] == "mysterious") || (result[0] == "cringe" && result[1] == "twitter" && result[2] == "chill"))
      erb :result8
    end
  end
end