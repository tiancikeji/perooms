#encoding utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# puts 'SETTING UP DEFAULT USER LOGIN'
# user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
# puts 'New user created: ' << user.name
# user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
# puts 'New user created: ' << user2.name
# user.add_role :admin

File.open('/Users/vissul2008/Work/perooms/doc/Hotel_All_Active 12-16-12.txt', 'r') do |f1|
  while line = f1.gets
    # puts line
    array = line.split('|')
    # p array
    array.each do | attr |
      p attr
      # Hotel.create! :name,:address1,:address2,:address3, :airportCode, :city, :countryCode, :deepLink,:confidence,:longituede,:latitude,:highrate, :name, :shortDescription, :thumbNailUrl
    end
  end
end
