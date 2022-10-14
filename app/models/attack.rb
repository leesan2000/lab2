class  Attack < ApplicationRecord
    belongs_to :monster, dependent: :destroy
    belongs_to :victim, dependent: :destroy
    
    validate :dif_edades
    def dif_edades
        if monster.scare_level > 5 && Date.today - victim.birthdate < 6574
            errors.add("Error. No es posible")
        end
    end

end