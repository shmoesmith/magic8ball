# basic objectives 1.)user inputs question, 2.) computer outputs random answer 3.) user inputs 'quit'
# 4.)computer outputs goodbye message and exits

#bonus 1. ability to add more questions via 1a. via easter eggs questions 2a. do not let them add the same 
#answer if its already in database

#bonus 2. ability to reset answers back to original bank.  2a.via easter egg question

#bonus 3. ability to have eightball print all answers 3a. via easter egg question

#bonus 4. ability to use script arguments when the eightball is started to do functionality above
    # example: ruby eightball.rb add_answers
    # this would start your script but instead of running regular you would be prompted to add answers first

stock_answers = [
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
@stock_answers_clone = stock_answers.clone

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
    puts "\n\nEnter a question or type 'quit' to exit"
    print "> "
    
    @question = gets.chomp

        if @question == "quit"
            exit
        else
          get_stock_answers
        end
end

main_menu

