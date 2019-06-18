require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    num = @number.to_i
    sq_num = num * num
    sq_num.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    num = @number.to_i
    @phrase = params[:phrase]

    "#{@phrase}\n" * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      num_add = @num1 + @num2
      num_add.to_s
    elsif @operation == "subtract"
      num_sub = @num1 - @num2
      num_sub.to_s
    elsif @operation == "multiply"
      num_mul = @num1 * @num2
      num_mul.to_s
    elsif @operation == "divide"
      num_div = @num1 / @num2
      num_div.to_s
    end
  end

end
