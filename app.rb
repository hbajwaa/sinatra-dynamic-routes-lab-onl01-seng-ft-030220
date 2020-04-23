require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "Hi #{@name.reverse}."
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{params[:number]} * #{params[:number]} = #{@square}"
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @phrase = params[:phrase]

    "#{@phrase}\n" * @n
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@words}"
  end

  get '/:operation/:number1/:number2' do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i

    @sum = @n1 + @n2
    @subtract = @n1 - @n2
    @product = @n1 * @n2
    @divide = @n1/@n2

    if params[:operation] == "add"
      "#{@sum}"
    elsif params[:operation] == "subtract"
      "#{@subtract}"
    elsif params[:operation] == "multiply"
      "#{@product}"
    elsif params[:operation] == "divide"
      "#{@divide}"
    end
  end



end
