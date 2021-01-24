class Pet < ApplicationRecord
  has_many :pet_histories, dependent: :destroy
  validates :name, :breed, :birthdate, presence: true

  accepts_nested_attributes_for :pet_histories

  def history_count
    PetHistory.where(pet_id: id).pluck(:pet_id).count
  end

  def avg_weight
    PetHistory.where(pet_id: id).pluck(:weight).sum
  end

  def avg_height
    PetHistory.where(pet_id: id).pluck(:height).sum
  end

  def max_weight
    PetHistory.where(pet_id: id).pluck(:weight).max
  end

  def max_height
    PetHistory.where(pet_id: id).pluck(:height).max
  end
end
