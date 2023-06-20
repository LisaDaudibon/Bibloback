class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
	       jwt_revocation_strategy: JwtDenylist

  has_one :reading_list
  has_one :reading_goal
  has_many :comments, dependent: :destroy


end
