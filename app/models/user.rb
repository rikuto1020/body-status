class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< Updated upstream
  has_many :temperatures

=======
  has_many :temperaturas
  has_many :group_users
  has_many :groups, through: :group_users

  validates :name, presence: true, uniqueness: true
>>>>>>> Stashed changes
end
