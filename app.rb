require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @p = params[:phrase]
    "#{@p * @n}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @one = params[:word1]
    @two = params[:word2]
    @three = params[:word3]
    @four = params[:word4]
    @five = params[:word5]
    "#{@one} #{@two} #{@three} #{@four} #{@five}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation].downcase
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == 'add'
      "#{@num1 + @num2}"
    elsif @op == 'subtract'
      "#{@num1 - @num2}"
    elsif @op == 'multiply'
      "#{@num1 * @num2}"
    elsif @op == 'divide'
      "#{@num1 / @num2}"
    end
    # binding.pry
  end


end