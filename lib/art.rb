class Art 


    def self.create_ascii_files 
        open_art = File.open("./lib/ascii/test_art/all_art.txt")
        text = open_art.read
        art_array = text.split("break") #returns objects with printf
        art_array.each_with_index do |drawing, i|
            f = File.new("./lib/ascii/all_art/#{Pokemon.all[i].name}.txt", "w")  
            drawing_array = drawing.split("printf")#each object is broken into rows represented by an array
            drawing_array.shift
            #maybe drawing_array.pop(2)
            ready_to_write = drawing_array.map do |row|     
                cut_right_off = row.split("\\n")[0] #right side is done
                finished_row = cut_right_off.slice(4..(row.length))
                f.puts(finished_row)
            end
            f.close 
        end
    end

   @road_1 = [
        "____        ____        ____        ____        ____        ____        ",
        "    ____        ____        ____        ____        ____        ____    ",
        "        ____        ____        ____        ____        ____        ____"
        ]   
    
    @road_2 = [
        "    ____        ____        ____        ____        ____        ____    ",
        "        ____        ____        ____        ____        ____        ____",
        "____        ____        ____        ____        ____        ____        "
        ]    
        
        
    @road_3 = [
        "        ____        ____        ____        ____        ____        ____",
        "____        ____        ____        ____        ____        ____        ",
        "    ____        ____        ____        ____        ____        ____    "
        ]      

    @air = [
        "",
        "",
        ""
        ]
    def self.create_ascii_road_1
        open_art = File.open("./lib/ascii/test_art/all_art.txt")
        text = open_art.read
        art_array = text.split("break") #returns objects with printf
        art_array.each_with_index do |drawing, i|
            f = File.new("./lib/ascii/workout_art/road_1/#{Pokemon.all[i].name}.txt", "w")  
            drawing_array = drawing.split("printf")#each object is broken into rows represented by an array
            drawing_array.shift
            @air.each do |row|
                f.puts(row)
            end
            ready_to_write = drawing_array.map do |row|     
                cut_right_off = row.split("\\n")[0] #right side is done
                finished_row = cut_right_off.slice(4..(row.length))
                f.puts(finished_row)
            end
            @road_1.each do |row|
                f.puts(row)
            end
            f.close 
        end
    end

    def self.create_ascii_road_2
        open_art = File.open("./lib/ascii/test_art/all_art.txt")
        text = open_art.read
        art_array = text.split("break") #returns objects with printf
        art_array.each_with_index do |drawing, i|
            f = File.new("./lib/ascii/workout_art/road_2/#{Pokemon.all[i].name}.txt", "w")  
            drawing_array = drawing.split("printf")#each object is broken into rows represented by an array
            drawing_array.shift
            ready_to_write = drawing_array.map do |row|     
                cut_right_off = row.split("\\n")[0] #right side is done
                finished_row = cut_right_off.slice(4..(row.length))
                f.puts(finished_row)
            end
            @air.each do |row|
                f.puts(row)
            end
            @road_2.each do |row|
                f.puts(row)
            end
            f.close 
        end
    end

    def self.create_ascii_road_3
        open_art = File.open("./lib/ascii/test_art/all_art.txt")
        text = open_art.read
        art_array = text.split("break") #returns objects with printf
        art_array.each_with_index do |drawing, i|
            f = File.new("./lib/ascii/workout_art/road_3/#{Pokemon.all[i].name}.txt", "w")  
            drawing_array = drawing.split("printf")#each object is broken into rows represented by an array
            drawing_array.shift
            @air.each do |row|
                f.puts(row)
            end
            ready_to_write = drawing_array.map do |row|     
                cut_right_off = row.split("\\n")[0] #right side is done
                finished_row = cut_right_off.slice(4..(row.length))
                f.puts(finished_row)
            end
            @road_3.each do |row|
                f.puts(row)
            end
            f.close 
        end
    end


    def self.create_ascii_road_4
        open_art = File.open("./lib/ascii/test_art/all_art.txt")
        text = open_art.read
        art_array = text.split("break") #returns objects with printf
        art_array.each_with_index do |drawing, i|
            f = File.new("./lib/ascii/workout_art/road_4/#{Pokemon.all[i].name}.txt", "w")  
            drawing_array = drawing.split("printf")#each object is broken into rows represented by an array
            drawing_array.shift
            ready_to_write = drawing_array.map do |row|     
                cut_right_off = row.split("\\n")[0] #right side is done
                finished_row = cut_right_off.slice(4..(row.length))
                f.puts(finished_row)
            end
            @air.each do |row|
                f.puts(row)
            end
            @road_1.each do |row|
                f.puts(row)
            end
            f.close 
        end
    end


    def self.create_ascii_road_5
        open_art = File.open("./lib/ascii/test_art/all_art.txt")
        text = open_art.read
        art_array = text.split("break") #returns objects with printf
        art_array.each_with_index do |drawing, i|
            f = File.new("./lib/ascii/workout_art/road_5/#{Pokemon.all[i].name}.txt", "w")  
            drawing_array = drawing.split("printf")#each object is broken into rows represented by an array
            drawing_array.shift
            @air.each do |row|
                f.puts(row)
            end
            ready_to_write = drawing_array.map do |row|     
                cut_right_off = row.split("\\n")[0] #right side is done
                finished_row = cut_right_off.slice(4..(row.length))
                f.puts(finished_row)
            end
            @road_2.each do |row|
                f.puts(row)
            end
            f.close 
        end
    end


    def self.create_ascii_road_6
        open_art = File.open("./lib/ascii/test_art/all_art.txt")
        text = open_art.read
        art_array = text.split("break") #returns objects with printf
        art_array.each_with_index do |drawing, i|
            f = File.new("./lib/ascii/workout_art/road_6/#{Pokemon.all[i].name}.txt", "w")  
            drawing_array = drawing.split("printf")#each object is broken into rows represented by an array
            drawing_array.shift
            ready_to_write = drawing_array.map do |row|     
                cut_right_off = row.split("\\n")[0] #right side is done
                finished_row = cut_right_off.slice(4..(row.length))
                f.puts(finished_row)
            end
            @air.each do |row|
                f.puts(row)
            end
            @road_3.each do |row|
                f.puts(row)
            end
            f.close 
        end
    end
end 

#