class Temperatura < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :month
  belongs_to_active_hash :day
  scope :created_today, -> { where("created_at >= ?", Time.zone.now.beginning_of_day) }
  
def self.temperatura_data
    order(day_id: :asc).pluck('result_date','temperature').to_h
end

  belongs_to :user
  belongs_to :group

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :month
  belongs_to_active_hash :day

def self.temperatura_data
    order(day_id: :asc).pluck('result_date','temperature').to_h
end

end
