class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :roomDescription
      t.string :rateCode
      t.string :roomTypeCode
      t.integer :hotel_id

      t.timestamps
    end
  end
end
