class Event < ApplicationRecord

  belongs_to :user



  validates :name, presence: true
  validates :location, presence: true



  validates :includes_food, presence: true
  validates :includes_drinks, presence: true

  validates :description, presence: true, length: { maximum: 500 }

end
