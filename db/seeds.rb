require 'iconv'
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
  i = 0
  while line = f1.gets
    i = i + 1
    if i != 1
      ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
      valid_string = ic.iconv(line)
      array = valid_string.split('|')
      p array[0]
      if !Hotel.where(:enahotel_id => array[0]).first
        Hotel.create! :enahotel_id => array[0],:name => array[1],
          :address1 => array[3],:address2=> array[4],
          :address3=> array[5], :airportCode=> array[2],
          :city=> array[6], :countryCode=> array[8], 
          :deepLink=> array[1],:confidence=> array[15],
          :longitude=> array[10],:latitude=> array[11],
          :highrate=> array[13], 
          :thumbNailUrl=> array[0]
      end
    end
  end
end
