class Activity < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :length => { :minimum => 3, :maximum => 50 }

end
