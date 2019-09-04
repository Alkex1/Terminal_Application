require 'colorize'

def note_app
    puts "Hello what would you like to do (options: make file, make directory, quicknote)".colorize(:cyan).underline
        puts "enter 'exit' at any point to close application".colorize(:light_cyan)
        user_input = gets.chomp
    while user_input
    
        if user_input == "quicknote" #|| "q"
            puts "quicknote:".colorize(:light_blue).underline
            puts "type 'back' at any point to end task".colorize(:blue)
            u_input1 = gets.chomp

            
            if u_input1 == "exit"
                exit
            elsif u_input1 == "back"
                note_app
            end

            file = File.open("quicknote.txt", "a")
            file << "\r" + "#{u_input1}"
            file.close

        

        elsif user_input == "make file"
            puts "What would you like to call it".colorize(:light_green).underline
            puts "type 'back' at any point to end task".colorize(:green)

            u_input2 = gets.chomp

            if u_input2 == "exit"
                exit
            elsif u_input2 == "back"
                note_app
            end
            
            File.new("#{u_input2}.txt", "w")
            puts "Created: #{u_input2}.txt"
            
            
            
        elsif user_input == "make directory"
            
            puts "Directory name:".colorize(:light_red).underline
            puts "type 'back' at any point to end task".colorize(:light_red)
            
            u_input3= gets.chomp

            if u_input3 == "exit"
                exit
            elsif u_input3 == "back"
                note_app
            end

            Dir.mkdir("#{u_input3}") unless File.exists?("#{u_input3}")
            puts "Created directory: #{u_input3}"
        
        elsif user_input == "exit"
            exit
        
        else
            puts "I'm sorry I didn't quite catch that"
            note_app
        end
    end
end

note_app