class AddColumnsToHotel < ActiveRecord::Migration
  def change
    add_column :hotels, :address2, :string
    add_column :hotels, :address3, :string
    add_column :hotels, :confidence, :string
    add_column :hotels, :longitude, :string
    add_column :hotels, :latitude, :string
    add_column :hotels, :highrate, :string
  end
end
