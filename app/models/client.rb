class Client < ApplicationRecord
    has_many :pets
    validates :name, :phone, :email, presence:true

    def pets_registered
        Pet.where(client_id: id).count
    end
end
