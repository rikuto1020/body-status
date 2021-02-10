class Group < ApplicationRecord

  has_many :group_users
  has_many :users, through: :group_users
  has_many :temperaturas
  validates :name, presence: true, uniqueness: true

end
