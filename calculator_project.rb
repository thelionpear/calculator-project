
@user_results_array = []

def calculator 
    puts "Welcome to the Ruby Calculator"
    first_number_function
end 
# this takes the first number and turns it into a variable by that name 
# it also tells the user they can only use numbers 
# if they give me an integer, it goes to the next step where it asks for the operator 
# if they give me anything else, it gives the error message and sends to beginning 
def first_number_function 
    puts "What is the first number?"
    print "> "
    first_number = gets.strip 
    if first_number =~ /-?\d+\.?\d*/
        puts "Accepted"
        @first_number = first_number.to_f 
        operator_function 
    else puts "Must enter a number."
        first_number_function 
    end 
end 
# it asks for the operator and turns it into a variable by that name 
# then it sends you to the operator case function to test your operator 
def operator_function 
    puts "What is the operator? +, -, /, *?"
    @operator = gets.strip 
    operator_case_test
end 
        
# checks your operator and sends to calculations or redoes operator function
def operator_case_test 
    case @operator 
    when "+"
        puts "accepted"
        second_number_function  
    when "-"
        puts "accepted"
        second_number_function
    when "/"
        puts "accepted"
        second_number_function 
    when "*" 
        puts "accepted"
        second_number_function 
    else puts "Operator not recognized."
        operator_function 
    end 
end 
#takes the second number and saves to a variable by that name if it's a number
def second_number_function 
    puts "What is the second number?"
    print "> " 
    second_number = gets.strip 
    if second_number =~ /-?\d+\.?\d*/
    puts "accepted" 
    @second_number = second_number.to_f
    calculations 
    else puts "Must enter a number"  
        second_number_function 
    calculations 
    end 
end
#takes all the previous variables if they were accepted and runs the calculations 
def calculations 
    case @operator 
    when "+"
        puts "#{@first_number} + #{@second_number} = #{@first_number + @second_number}"
        @user_result = (@first_number + @second_number)
        @user_results_array << @user_result
    when "-"
        puts "#{@first_number} - #{@second_number} = #{@first_number - @second_number}"
        @user_result = (@first_number - @second_number)
        @user_results_array << @user_result
    when "/"
        puts "#{@first_number} / #{@second_number} = #{@first_number / @second_number}"
        @user_result = (@first_number / @second_number)
        @user_results_array << @user_result
    when "*"
        puts "#{@first_number} * #{@second_number} = #{@first_number * @second_number}"
        @user_result = (@first_number * @second_number)
        @user_results_array << @user_result
    end 
    puts "Would you like to continue calculating? Y or N?"
    answer = gets.chomp 
    if answer == "Y" || answer =="y"
        continued_calculations
    else 
        puts "Have a good day!"
        exit 
    end 
end  

def continued_calculations 
    puts "Continuing Calculations with Most Recent Result"
    puts "What is the operator? +, -, /, *?"
    @operator = gets.strip 
    case @operator 
    when "+"
        puts "accepted" 
        continued_calculations_2
    when "-"
        puts "accepted"
        continued_calculations_2
    when "/"
        puts "accepted" 
        continued_calculations_2
    when "*" 
        puts "accepted" 
        continued_calculations_2
    else puts "Operator not recognized."
        continued_calculations  
    end 
end 

def continued_calculations_2
    puts "What is your new number?"
    print "> "
    new_number = gets.strip 
    if new_number =~ /-?\d+\.?\d*/
        puts "Accepted"
        @new_number = new_number.to_f 
        continued_calculations_3 
    else puts "Must enter a number."
        continued_calculations_2  
    end 
end 

def continued_calculations_3 
    case @operator 
    when "+"
        puts "#{@user_results_array.last} + #{@new_number} = #{@user_results_array.last + @new_number}"
        @user_result = (@user_results_array.last + @new_number)
        @user_results_array << @user_result
        puts @user_results_array.last 
    when "-"
        puts "#{@user_results_array.last} - #{@new_number} = #{@user_results_array.last - @new_number}"
        @user_result = (@user_results_array.last - @new_number)
        @user_results_array << @user_result
        puts @user_results_array.last 
    when "/"
        puts "#{@user_results_array.last} / #{@new_number} = #{@user_results_array.last / @new_number}"
        @user_result = (@user_results_array.last / @new_number)
        @user_results_array << @user_result
        puts @user_results_array.last 
    when "*"
        puts "#{@user_results_array.last} * #{@new_number} = #{@user_results_array.last * @new_number}"
        @user_result = (@user_results_array.last * @new_number)
        @user_results_array << @user_result
        puts @user_results_array.last 
    end 
    puts "Would you like to continue calculating? Y or N?"
    answer = gets.chomp 
    if answer == "Y" || answer == "y"
        continued_calculations
    else 
        puts "Have a good day!"
        exit 
    end 
end 


   

calculator 