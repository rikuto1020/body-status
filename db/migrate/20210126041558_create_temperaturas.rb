class CreateTemperaturas < ActiveRecord::Migration[6.0]
  def change
    create_table :temperaturas do |t|
      t.integer :temperature, null: false
      t.integer :month, null: false  
      t.integer :day, null: false
      t.integer :user_id, null: false ,foreign_key: true
      t.timestamps
    end
  end
end
