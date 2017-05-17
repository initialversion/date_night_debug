class Recipe < ApplicationRecord
  # Direct associations

  belongs_to :creator,
             :class_name => "User",
             :foreign_key => "contributor_id"

  # Indirect associations

  # Validations

  validates :recipe, :presence => true

end
