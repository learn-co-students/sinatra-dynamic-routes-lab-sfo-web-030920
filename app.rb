require_relative "config/environment"

class App < Sinatra::Base
  get "/reversename/:name" do
    name = params[:name]
    "#{name.reverse}"
  end

  get "/square/:number" do
    num = params[:number].to_i
    result = num ** 2
    "#{result}"
  end

  get "/say/:number/:phrase" do
    num = params[:number]
    phrase = params[:phrase]
    "#{phrase * num.to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    str = ""
    puts params
    params.each do |key, value|
      str += " " + value
    end
    " #{str}."
  end

  get "/:operation/:number1/:number2" do
    puts params
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operation
    when "add"
      result = num1 + num2
      "#{result.to_s}"
    when "subtract"
      result = num1 - num2
      "#{result.to_s}"
    when "multiply"
      result = num1 * num2
      "#{result.to_s}"
    when "divide"
      result = num1 / num2
      "#{result.to_s}"
    else
      "Operation not found"
    end
  end
end
