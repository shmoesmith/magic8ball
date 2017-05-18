# basic objectives 1.)user inputs question, 2.) computer outputs random answer 3.) user inputs 'quit'
# 4.)computer outputs goodbye message and exits

#bonus 1. ability to add more questions via 1a. via easter eggs questions 2a. do not let them add the same 
#answer if its already in database

#bonus 2. ability to reset answers back to original bank.  2a.via easter egg question

#bonus 3. ability to have eightball print all answers 3a. via easter egg question

#bonus 4. ability to use script arguments when the eightball is started to do functionality above
    # example: ruby eightball.rb add_answers
    # this would start your script but instead of running regular you would be prompted to add answers first



def main_menu
    puts "---Welcome to the Magic 8 ball---"
    puts "\n\nEnter a question or type 'quit' to exit"
    print "> "
    
    question = gets.chomp

        if question == "quit"
            exit
        else
          # play in the array!
        end
end

main_menu

