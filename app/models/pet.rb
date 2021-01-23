class Pet < ApplicationRecord
  has_many :pet_histories, dependent: :destroy
  accepts_nested_attributes_for :pet_histories

  def history_count
    #TODO-implement
  end

  def avg_weight
    #TODO-implement
  end

  def avg_height
    #TODO-implement
  end

  def max_weight
    #TODO-implement
  end

  def max_height
    #TODO-implement
  end
end
