class Recipe < ApplicationRecord
  mount_uploader :picture, PictureUploader

  # Direct associations

  has_many   :date_nights,
             :foreign_key => "meal_id",
             :dependent => :nullify

  belongs_to :creator,
             :class_name => "User",
             :foreign_key => "contributor_id"

  # Indirect associations

  # Validations

  validates :recipe, :presence => true

end
