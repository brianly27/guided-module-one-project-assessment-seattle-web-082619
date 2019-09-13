class Pokemon < ActiveRecord::Base
    has_many :companions
    has_many :users, through: :companions

    def workout
        
    end

    def ascii
        Game.banner
        4.times {puts}
        art = File.open("./lib/ascii/#{self.name}.txt")
        puts art.read
        art.close
    end
end
