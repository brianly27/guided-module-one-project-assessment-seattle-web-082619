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


    

end 

#