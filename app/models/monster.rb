class Monster < ApplicationRecord 
    has_many :attacks
    has_many :victims, through: :attacks
    validates :name, presence: true
    validates_uniqueness_of :name
end
