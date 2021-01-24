class AddPetRefToPetHistory < ActiveRecord::Migration[6.0]
  def change
    add_reference :pet_histories, :pet, foreign_key: true
  end
end
