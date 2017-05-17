class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :date_nights,
             :dependent => :nullify

  belongs_to :contributor,
             :class_name => "User"

  # Indirect associations

  # Validations

  validates :name, :length => { :minimum => 3, :maximum => 20 }

end
