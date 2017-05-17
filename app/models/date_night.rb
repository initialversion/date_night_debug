class DateNight < ApplicationRecord
  # Direct associations

  belongs_to :restaurant,
             :counter_cache => true

  belongs_to :meal,
             :class_name => "Recipe",
             :counter_cache => true

  belongs_to :date,
             :class_name => "User"

  belongs_to :user

  # Indirect associations

  # Validations

  validates :day, :presence => true

end
