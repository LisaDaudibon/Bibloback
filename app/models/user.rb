class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
	       jwt_revocation_strategy: JwtDenylist

  belongs_to :reading_list
  belongs_to :reading_goal
  has_many :comments, dependent: :destroy


end
