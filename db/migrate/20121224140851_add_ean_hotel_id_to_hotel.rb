class AddEanHotelIdToHotel < ActiveRecord::Migration
  def change
    add_column :hotels, :enahotel_id, :string
  end
end
