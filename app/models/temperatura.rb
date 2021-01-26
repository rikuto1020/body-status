class Temperatura < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :month
  belongs_to_active_hash :day

end
