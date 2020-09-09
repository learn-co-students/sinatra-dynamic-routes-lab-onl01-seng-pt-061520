require_relative 'config/environment'

class App < Sinatra::Base
 
    get '/reversename/:name' do 
      @user_name = params[:name] 
     x = @user_name.reverse
      "#{x}"
    end   

    get '/square/:number' do 
      @num = params[:number].to_i 
      x = @num ** 2
      "#{x}"
    end 

    get '/say/:number/:phrase' do 
      @num = params[:number].to_i 
      @phrase = params[:phrase] 
      x = @phrase * @num 
      "#{x}"
    end 

    get "/say/:word1/:word2/:word3/:word4/:word5" do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get "/:operation/:num1/:num2" do
      @num1 = params[:num1].to_i
      @num2 = params[:num2].to_i
      @operation = params[:operation]
      case @operation
      when 'add'
        "#{@num1 + @num2}"
      when 'multiply'
        "#{@num1 * @num2}"
      when 'subtract'
        "#{@num1 - @num2}"
      when 'divide'
        "#{@num1 / @num2}"
      end
  
    end

 end 