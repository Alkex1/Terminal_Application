require 'colorize'
require 'fileutils'

# puts "Hey, #{ARGV[0]}"

# ARGV.clear


def note_app
    puts "Hello what would you like to do" .colorize(:light_cyan).underline
    puts "(options: quicknote, make file, make directory, move file, remove file, remove directory)".colorize(:cyan)
    puts "enter 'exit' at any point to close application".colorize(:cyan)
        user_input = gets.chomp
    begin
    while user_input
        
        if user_input == "quicknote" || user_input == "q"
            puts "quicknote:".colorize(:light_blue).underline
            puts "type 'back' to stop taking notes".colorize(:blue)
            u_input1 = gets.chomp
            
            

                if u_input1 == "exit"
                    exit
                elsif u_input1 == "back"
                    note_app
                end

            file = File.open("quicknote.txt", "a")
            file << "#{u_input1}" + "\r\n"
            file.close
            
            if user_input == "exit" || user_input == "back" 
    
            else
            end

        elsif user_input == "make file" || user_input == "file"
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
            
            return note_app
            
            
        elsif user_input == "make directory" || user_input == "directory"
            
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

        elsif user_input == "read quicknote" || user_input == "note"
            file = "quicknote.txt"
            f = File.read(file)
            puts f
            
            return note_app


        elsif user_input == "move file" || user_input == "move"
            puts "What file would you like to move".colorize(:green).underline
            u_input4 = gets.chomp
            
                if u_input4 == "exit"
                    exit
                elsif u_input4 == "back"
                    note_app
                end
            
            puts "where to"
            u_input7 = gets.chomp

                if u_input7 == "exit"
                    exit
                elsif u_input7 == "back"
                    note_app
                end

            FileUtils.mv "#{u_input4}", "#{u_input7}", :force => true
            
            puts "moved file"
            
            return note_app
        
        elsif user_input == "remove file" || user_input == "r file"
            puts "what file would you like to remove(have to add .txt to end of file name)".colorize(:light_green).underline
            
            u_input5 = gets.chomp

                if u_input5 == "exit"
                    exit
                elsif u_input5 == "back"
                    note_app
                end

            FileUtils.rm "#{u_input5}", :verbose => true
        
        elsif user_input == "remove directory" || user_input == "rm dir"
            puts "Which directory would you like to remove?".colorize(:red).underline
            puts "(cannot remove folders with files inside of them)".colorize(:light_red)

            u_input6 = gets.chomp

                if u_input6 == "exit"
                    exit
                elsif u_input6 == "back"
                    note_app
                end

            FileUtils.rmdir "#{u_input6}", :verbose => true

        elsif user_input == "exit"
            exit
        
        else
            puts "I'm sorry I didn't quite catch that"
            note_app
        end
    end
    rescue
        p "Whoops, that shouldn't have happened"
    end
end


note_app