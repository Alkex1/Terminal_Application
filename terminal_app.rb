##myStorage = window.localStorage;
puts "Hello what would you like to do (options: make file, make directory, quicknote)"
user_input = gets.chomp

until user_input == "done"
    
    if user_input == "quicknote" #|| "q"
        puts "quicknote:"
        puts "type 'back' at any point to end task"

        u_input1 = gets.chomp
        
        if u_input1 == "back"
            break
        end

        file = File.open("quicknote.txt", "a")
        file << "\r" + "#{u_input1}"
        file.close

        

    elsif user_input == "make file"
        puts "What would you like to call it"
        puts "type 'back' at any point to end task"

        u_input2 = gets.chomp

        if u_input2 == "back"
            break
        end

        File.new("#{u_input2}.txt", "w")
        puts "Created #{u_input2}.txt"
        
    

    elsif user_input == "make directory"

        puts "Directory name:"
        puts "type 'back' at any point to end task"

        u_input3= gets.chomp
        if u_input3 == "back"
            break
        end
        Dir.mkdir("#{u_input3}") unless File.exists?("#{u_input3}")
        
    else 
        puts "I'm sorry I didn't quite catch that"
    end
end

