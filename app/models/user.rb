class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
	       jwt_revocation_strategy: JwtDenylist

  validates :pseudo,
    uniqueness: true
    # presence: true

  after_create :new_reading_list
  # after_create :create_reading_goal

  has_one :reading_list
  # has_one :reading_goal
  has_many :comments, dependent: :destroy

  def admin?
    admin == true
  end

  private
    def new_reading_list
      @reading_list = ReadingList.create(user_id: self.id)
    end

    # def create_reading_goal
    #   @reading_goal = ReadingGoal.create(user_id: self.id)
    #   # add list items to @list
    # end
end
