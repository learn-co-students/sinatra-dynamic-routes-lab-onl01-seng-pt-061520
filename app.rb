require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @a = params[:name]
    @a.reverse
  end 
  
  get '/square/:number' do 
    @a = params[:number].to_i 
    "#{@a*@a}"
  end 
  
  get '/say/:number/:phrase' do 
    @a = params[:number].to_i 
    @b = params[:phrase]
    "#{@b*@a}"
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @a = params[:word1]
    @b = params[:word2] 
    @c = params[:word3] 
    @d = params[:word4]
    @e = params[:word5]
    "#{@a + ' ' + @b + ' ' + @c + ' ' + @d + ' ' + @e + "."}"
  end 
  
  get '/:operation/:number1/:number2' do 
    @o = params[:operation]
    @a = params[:number1].to_i 
    @b = params[:number2].to_i 
    if @o == "add"
      "#{@a + @b}"
    elsif @o == "subtract"
      "#{@a - @b}"
    elsif @o == "multiply"
      "#{@a * @b}"
    else 
      "#{@a/@b}"
    end 
  end 
end