class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :contributor,
             :class_name => "User"

  # Indirect associations

  # Validations

  validates :name, :length => { :minimum => 3, :maximum => 20 }

end
