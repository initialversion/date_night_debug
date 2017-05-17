class Restaurant < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :length => { :minimum => 3, :maximum => 20 }

end
