require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num**2}"
  end

  get "/say/:number/:phrase" do
    @num, @phrase = params[:number].to_i, params[:phrase]
    "#{@phrase*@num}"
  end

  # get "/say/:number/:phrase" do
  #   @num, @phrase = params[:number].to_i, params[:phrase] #why wont this work?
  #   "#{@num*@phrase}"
  # end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @words = []
    params.values.each {|word| @words << word}
    @sentence = @words.join(" ")
    "#{@sentence}."
  end

  get "/:operation/:number1/:number2" do
    @op, @num1, @num2 = params[:operation], params[:number1].to_i, params[:number2].to_i
    case @op
    when "add"
      "#{@num1+@num2}"
    when "subtract"
      "#{@num1-@num2}"
    when "multiply"
      "#{@num1*@num2}"
    when "divide"
      "#{@num1/@num2}"
    end
  end


end