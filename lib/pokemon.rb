class Pokemon < ActiveRecord::Base
    has_many :companions
    has_many :users, through: :companions


end
