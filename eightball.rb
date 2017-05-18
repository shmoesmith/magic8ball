#bonus 1. ability to add more questions via 1a. via easter eggs questions 2a. do not let them add the same 
#answer if its already in database

#bonus 2. ability to reset answers back to original bank.  2a.via easter egg question

#bonus 3. ability to have eightball print all answers 3a. via easter egg question


@stock_answers = [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes Definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most Likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy, try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful",
]
@stock_answers_clone = @stock_answers

def custom_answers
    @stock_answers_clone = []
    puts "1. Enter a custom answer"
    puts "2. Return to menu"

    push_or_return = $stdin.gets.chomp

    case push_or_return
        when "1"
            #do something
        when "2"
            secret_menu
        else
            puts "enter a valid selection"
    end
end


def custom_reset
    @stock_answers_clone = @stock_answers
    puts "\nAnswers reset to stock!\n"
    secret_menu
end


def get_stock_answers
    puts "The answer to your question #{@question} is"
    puts "\n\n*************************"
    puts @stock_answers_clone.sample
    puts "*************************"
    puts "\n\n"
    main_menu
end


def main_menu
    puts "---Welcome to the Magic 8 ball---"
    puts " \t _......._
      .-:::::::::::-.
    .:::::::::::::::::.
   :::::::' .-. `:::::::
  :::::::  :   :  :::::::
 ::::::::  :   :  ::::::::
 :::::::::._`-'_.:::::::::
 :::::::::' .-. `:::::::::
 ::::::::  :   :  ::::::::
  :::::::  :   :  :::::::
   :::::::._`-'_.:::::::
    `:::::::::::::::::'
      `-:::::::::::-'
         `'''''''`"
    puts "\n\nEnter a question or type 'quit' to exit"
    print "> "
    
    @question = $stdin.gets.chomp

        if @question == "quit"
            puts "\n\n\nTHANKS FOR PLAYING! GOODBYE\n\n\n"
            exit
        elsif @question == "secret"
            secret_menu
        else
          get_stock_answers
        end
end


def secret_menu
    puts "---Welcome to the super secret Magic 8 ball menu---"
    puts "\nThis menu will allow you to do all sorts of neat things!"
    puts "\n1. Add some some sick custom answers!"
    puts "2. Reset answers back to stock answers"
    puts "3. See all current Magic 8 Ball answers"
    puts "4. Play Magic 8 Ball"
    puts "\nType 'quit' to exit\n"
    print "> "

    secret_menu_answer = $stdin.gets.chomp

    case secret_menu_answer
        when "1"
            custom_answers
        when "2"
           custom_reset
        when "3"
            @stock_answers_clone.each {|answer| puts answer}
            puts "\n\n"
            secret_menu
        when "4"
            main_menu
        when "quit"
            exit
        else
            puts "Please enter a valid selection"

        end
end


secret_menu_parameter = ARGV.first

    if secret_menu_parameter == "secret"
        secret_menu
    else
        main_menu
    end

