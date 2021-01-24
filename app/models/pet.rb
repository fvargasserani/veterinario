class Pet < ApplicationRecord
  has_many :pet_histories, dependent: :destroy
  accepts_nested_attributes_for :pet_histories

  def history_count
    PetHistory.pluck(:id).count
  end


  def avg_weight
    PetHistory.pluck(:weight).sum
  end

  def avg_height
    PetHistory.pluck(:height).sum
  end

  def max_weight
    PetHistory.pluck(:weight).max
  end

  def max_height
    PetHistory.pluck(:height).max
  end
end
