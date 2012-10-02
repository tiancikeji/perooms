class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :address1
      t.string :airportCode
      t.string :city
      t.string :countryCode
      t.string :deepLink
      t.string :name
      t.string :shortDescription
      t.string :thumbNailUrl

      t.timestamps
    end
  end
end
