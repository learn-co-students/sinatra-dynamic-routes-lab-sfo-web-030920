require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse!
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @num = @num * @num
    "#{@num}"
  end

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    i = 0
    array = []
    while i < @num
      array << @phrase
      i += 1
    end
    "#{array}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    "#{@num1} #{@operation} #{@num2}"
    case @operation
    when "add"
      num = @num1 + @num2
    when "subtract"
      num = @num1 - @num2
    when "multiply"
      num = @num1 * @num2
    when "divide"
      num = @num1 / @num2
    end
    "#{num}"
  end

end


# 1. Create a dynamic route at `get '/reversename/:name'` that accepts a name and renders the name backwards.

# 2. Create a dynamic route at `get '/square/:number'` that accepts a number and returns the square of that number. **Note:** Remember that values in params always come in as strings, and your return value for the route should also be a string (use `.to_i` and `.to_s`).

# 3. Create a dynamic route at `get '/say/:number/:phrase'` that accepts a number and a phrase and returns that phrase in a single string the number of times given.

# 4. Create a dynamic route at `get '/say/:word1/:word2/:word3/:word4/:word5'` that accepts five words and returns a string containing all five words 
# (i.e. `word1 word2 word3 word4 word5`).

# 5. Create a dynamic route at `get '/:operation/:number1/:number2'` that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided, returning a `String`. For example, going to `/add/1/2` should render `3` as a `String`.