require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get "/reversename/:name" do
      @user_name = params[:name]
      "#{@user_name}".reverse
    end

    get "/square/:number" do
      @num = params[:number].to_i
      "#{@num * @num}"
    end


    get "/say/:number/:phrase" do
      @number = params[:number].to_i
      @phrase=params[:phrase]
        erb :number_phrase
    end


    get "/say/:word1/:word2/:word3/:word4/:word5" do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    end

    get '/:operation/:number1/:number2' do
     
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      @operation = params[:operation].to_s
      case @operation
        when "add"
          @results = @num1 + @num2
          @results.to_s
        
        when "subtract"
          @results = @num1 - @num2
          @results.to_s

        when "multiply"
          @results = @num1 * @num2
          @results.to_s 

        when "divide"
          @results = @num1 / @num2
          @results.to_s 
        end

   

    end

end


   # if @operation == "add"
      #   @equals = @num1 + @num2
      #    @equals.to_s
      #    binding.pry
      # # elsif