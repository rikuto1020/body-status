class CreateTemperaturas < ActiveRecord::Migration[6.0]
  def change
    create_table :temperaturas do |t|

      t.float :temperature, null: false
      t.integer :month_id, null: false  
      t.integer :day_id, null: false
      t.integer :user_id, null: false ,foreign_key: true
      t.string :result_date
      t.timestamps
    end
  end
end
