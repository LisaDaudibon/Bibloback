class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
	       jwt_revocation_strategy: JwtDenylist

  after_create :new_reading_list

  has_one :reading_list
  has_one :reading_goal
  has_many :comments, dependent: :destroy

  private
    def new_reading_list
      @reading_list = ReadingList.create(user_id: self.id)
    end

end
