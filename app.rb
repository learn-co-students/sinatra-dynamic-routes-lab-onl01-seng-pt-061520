require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name]
    "#{@reverse_name.reverse}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i
    "#{@square_number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{ @phrase * @number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_string = params.map { |k,v| v }
    "#{@word_string.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @operation = "+"
    when "subtract"
      @operation = "-"
    when "multiply"
      @operation = "*"
    when "divide"
      @operation = "/"
    end
    @number1 = params[:number1]
    @number2 = params[:number2]
    @total = eval(@number1+@operation+@number2)
    "#{@total}"
  end
end
