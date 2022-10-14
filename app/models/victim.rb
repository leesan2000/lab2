class Victim < ApplicationRecord
    has_many :attacks
    has_many :monsters, through: :attacks
    
    validates :name, presence: true
end