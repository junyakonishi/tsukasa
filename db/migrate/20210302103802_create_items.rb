class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :catchup, null: false
      t.text :good, null: false
      t.string :type_id, null: false
      t.string :room, null: false
      t.string :room_fee, null: false
      t.string :common_ff, null: false
      t.integer :area_id, null: false
      t.string :deposit, null: false
      t.string :money, null: false
      t.string :guarantee, null: false
      t.string :brokerage, null: false
      t.string :insurance, null: false
      t.string :renew, null: false
      t.string :movein, null: false
      t.text :others, null: false
      t.string :address, null: false
      t.text :traffic, null: false
      t.string :building_name, null: false
      t.string :structure, null: false
      t.string :occupied_area, null: false
      t.string :number, null: false
      t.string :year, null: false
      t.text :specifications, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.string :image, null: false
      t.integer :type_id, null: false

      t.timestamps
    end
  end
end
