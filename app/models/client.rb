class Client < ApplicationRecord
    has_many :pets
    has_many :pet_histories, :through => :pets
    validates :name, :phone, :email, presence:true

    def pets_registered
        Pet.where(client_id: id).count
    end

    def max_weight
        PetHistory.pluck(:weight).max
    end
    
    def max_height
        PetHistory.pluck(:height).max
    end
end