class Client < ApplicationRecord
    has_many :pets
    validates :name, :phone, :email, presence:true
end
