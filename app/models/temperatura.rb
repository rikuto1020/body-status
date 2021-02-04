class Temperatura < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :month
  belongs_to_active_hash :day

def self.temperatura_data
    order(day_id: :asc).pluck('result_date','temperature').to_h
end

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :month
  belongs_to_active_hash :day

def self.temperatura_data
    order(day_id: :asc).pluck('result_date','temperature').to_h
end

end
