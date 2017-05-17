class User < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :foreign_key => "contributor_id",
             :dependent => :nullify

  has_many   :activities,
             :foreign_key => "contributor_id",
             :dependent => :nullify

  has_many   :recipes,
             :foreign_key => "contributor_id",
             :dependent => :nullify

  has_many   :date_invites,
             :class_name => "DateNight",
             :foreign_key => "date_id",
             :dependent => :destroy

  has_many   :date_plans,
             :class_name => "DateNight",
             :dependent => :destroy

  # Indirect associations

  has_many   :date_inviters,
             :through => :date_invites,
             :source => :user

  has_many   :date_partners,
             :through => :date_plans,
             :source => :date

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
