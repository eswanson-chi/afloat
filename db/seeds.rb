# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

device_info = [
{ :model_number => 'A1219', :internal_name => 'k48ap', :identifier => 'iPad1,1', :name => 'iPad', :image => 'ipad.png', :min_os_id => 8, :max_os_id => 15 },
{ :model_number => 'A1337', :internal_name => 'k48ap', :identifier => 'iPad1,1', :name => 'iPad', :image => 'ipad.png', :min_os_id => 8, :max_os_id => 15 },
{ :model_number => 'A1395', :internal_name => 'k93ap', :identifier => 'iPad2,1', :name => 'iPad 2', :image => 'ipad_2.png', :min_os_id => 11, :max_os_id => 25 },
{ :model_number => 'A1396', :internal_name => 'k94ap', :identifier => 'iPad2,2', :name => 'iPad 2', :image => 'ipad_2.png', :min_os_id => 11, :max_os_id => 25 },
{ :model_number => 'A1397', :internal_name => 'k95ap', :identifier => 'iPad2,3', :name => 'iPad 2', :image => 'ipad_2.png', :min_os_id => 11, :max_os_id => 25 },
{ :model_number => 'A1395', :internal_name => 'k93aap', :identifier => 'iPad2,4', :name => 'iPad 2', :image => 'ipad_2.png', :min_os_id => 11, :max_os_id => 25 },
{ :model_number => 'A1416', :internal_name => 'j1ap', :identifier => 'iPad3,1', :name => 'iPad 3', :image => 'ipad_3.png', :min_os_id => 14, :max_os_id => 25 },
{ :model_number => 'A1403', :internal_name => 'j2ap', :identifier => 'iPad3,2', :name => 'iPad 3', :image => 'ipad_3.png', :min_os_id => 14, :max_os_id => 25 },
{ :model_number => 'A1430', :internal_name => 'j2aap', :identifier => 'iPad3,3', :name => 'iPad 3', :image => 'ipad_3.png', :min_os_id => 14, :max_os_id => 25 },
{ :model_number => 'A1458', :internal_name => 'p101ap', :identifier => 'iPad3,4', :name => 'iPad 4', :image => 'ipad_4.png', :min_os_id => 16, :max_os_id => 25 },
{ :model_number => 'A1459', :internal_name => 'p102ap', :identifier => 'iPad3,5', :name => 'iPad 4', :image => 'ipad_4.png', :min_os_id => 17, :max_os_id => 25 },
{ :model_number => 'A1460', :internal_name => 'p103ap', :identifier => 'iPad3,6', :name => 'iPad 4', :image => 'ipad_4.png', :min_os_id => 17, :max_os_id => 25 },
{ :model_number => 'A1474', :internal_name => 'j71ap', :identifier => 'iPad4,1', :name => 'iPad Air', :image => 'ipad_air.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1475', :internal_name => 'j72ap', :identifier => 'iPad4,2', :name => 'iPad Air', :image => 'ipad_air.png', :min_os_id => 20, :max_os_id => 25 },
{ :model_number => 'A1476', :internal_name => 'j73ap', :identifier => 'iPad4,3', :name => 'iPad Air', :image => 'ipad_air.png', :min_os_id => 20, :max_os_id => 25 },
{ :model_number => 'A1566', :internal_name => 'j81ap', :identifier => 'iPad5,3', :name => 'iPad Air 2', :image => 'ipad_air_2.png', :min_os_id => 23, :max_os_id => 25 },
{ :model_number => 'A1567', :internal_name => 'j82ap', :identifier => 'iPad5,4', :name => 'iPad Air 2', :image => 'ipad_air_2.png', :min_os_id => 23, :max_os_id => 25 },
{ :model_number => 'A1432', :internal_name => 'p105ap', :identifier => 'iPad2,5', :name => 'iPad mini 1G', :image => 'ipad_mini.png', :min_os_id => 16, :max_os_id => 25 },
{ :model_number => 'A1454', :internal_name => 'p106ap', :identifier => 'iPad2,6', :name => 'iPad mini 1G', :image => 'ipad_mini.png', :min_os_id => 17, :max_os_id => 25 },
{ :model_number => 'A1455', :internal_name => 'p107ap', :identifier => 'iPad2,7', :name => 'iPad mini 1G', :image => 'ipad_mini.png', :min_os_id => 17, :max_os_id => 25 },
{ :model_number => 'A1489', :internal_name => 'j85ap', :identifier => 'iPad4,4', :name => 'iPad mini 2', :image => 'ipad_mini_2.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1490', :internal_name => 'j86ap', :identifier => 'iPad4,5', :name => 'iPad mini 2', :image => 'ipad_mini_2.png', :min_os_id => 20, :max_os_id => 25 },
{ :model_number => 'A1491', :internal_name => 'j87ap', :identifier => 'iPad4,6', :name => 'iPad mini 2', :image => 'ipad_mini_2.png', :min_os_id => 20, :max_os_id => 25 },
{ :model_number => 'A1599', :internal_name => 'j85map', :identifier => 'iPad4,7', :name => 'iPad mini 3', :image => 'ipad_mini_3.png', :min_os_id => 22, :max_os_id => 25 },
{ :model_number => 'A1600', :internal_name => 'j86map', :identifier => 'iPad4,8', :name => 'iPad mini 3', :image => 'ipad_mini_3.png', :min_os_id => 23, :max_os_id => 25 },
{ :model_number => 'A1601', :internal_name => 'j87map', :identifier => 'iPad4,9', :name => 'iPad mini 3', :image => 'ipad_mini_3.png', :min_os_id => 23, :max_os_id => 25 },
{ :model_number => 'A1203', :internal_name => 'm68ap', :identifier => 'iPhone1,1', :name => 'iPhone', :image => 'iphone.png', :min_os_id => 1, :max_os_id => 6 },
{ :model_number => 'A1241', :internal_name => 'n82ap', :identifier => 'iPhone1,2', :name => 'iPhone 3G', :image => 'iphone_3g.png', :min_os_id => 3, :max_os_id => 11 },
{ :model_number => 'A1324', :internal_name => 'n82ap', :identifier => 'iPhone1,2', :name => 'iPhone 3G', :image => 'iphone_3g.png', :min_os_id => 3, :max_os_id => 11 },
{ :model_number => 'A1303', :internal_name => 'n88ap', :identifier => 'iPhone2,1', :name => 'iPhone 3GS', :image => 'iphone_3gs.png', :min_os_id => 5, :max_os_id => 18 },
{ :model_number => 'A1325', :internal_name => 'n88ap', :identifier => 'iPhone2,1', :name => 'iPhone 3GS', :image => 'iphone_3gs.png', :min_os_id => 5, :max_os_id => 18 },
{ :model_number => 'A1332', :internal_name => 'n90ap', :identifier => 'iPhone3,1', :name => 'iPhone 4', :image => 'iphone_4.png', :min_os_id => 9, :max_os_id => 21 },
{ :model_number => 'A1332', :internal_name => 'n90bap', :identifier => 'iPhone3,2', :name => 'iPhone 4', :image => 'iphone_4.png', :min_os_id => 9, :max_os_id => 21 },
{ :model_number => 'A1349', :internal_name => 'n92ap', :identifier => 'iPhone3,3', :name => 'iPhone 4', :image => 'iphone_4.png', :min_os_id => 12, :max_os_id => 21 },
{ :model_number => 'A1387', :internal_name => 'n94ap', :identifier => 'iPhone4,1', :name => 'iPhone 4S', :image => 'iphone_4s.png', :min_os_id => 13, :max_os_id => 25 },
{ :model_number => 'A14311', :internal_name => 'n94ap', :identifier => 'iPhone4,1', :name => 'iPhone 4S', :image => 'iphone_4s.png', :min_os_id => 13, :max_os_id => 25 },
{ :model_number => 'A1428', :internal_name => 'n41ap', :identifier => 'iPhone5,1', :name => 'iPhone 5', :image => 'iphone_5.png', :min_os_id => 16, :max_os_id => 25 },
{ :model_number => 'A1429', :internal_name => 'n42ap', :identifier => 'iPhone5,2', :name => 'iPhone 5', :image => 'iphone_5.png', :min_os_id => 16, :max_os_id => 25 },
{ :model_number => 'A1442', :internal_name => 'n42ap', :identifier => 'iPhone5,2', :name => 'iPhone 5', :image => 'iphone_5.png', :min_os_id => 16, :max_os_id => 25 },
{ :model_number => 'A1456', :internal_name => 'n48ap', :identifier => 'iPhone5,3', :name => 'iPhone 5c', :image => 'iphone_5c.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1532', :internal_name => 'n48ap', :identifier => 'iPhone5,3', :name => 'iPhone 5c', :image => 'iphone_5c.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1507', :internal_name => 'n48ap', :identifier => 'iPhone5,4', :name => 'iPhone 5c', :image => 'iphone_5c.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1516', :internal_name => 'n48ap', :identifier => 'iPhone5,4', :name => 'iPhone 5c', :image => 'iphone_5c.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1526', :internal_name => 'n48ap', :identifier => 'iPhone5,4', :name => 'iPhone 5c', :image => 'iphone_5c.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1529', :internal_name => 'n48ap', :identifier => 'iPhone5,4', :name => 'iPhone 5c', :image => 'iphone_5c.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1529', :internal_name => 'n49ap', :identifier => 'iPhone5,4', :name => 'iPhone 5c', :image => 'iphone_5c.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1453', :internal_name => 'n51ap', :identifier => 'iPhone6,1', :name => 'iPhone 5s', :image => 'iphone_5s.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1533', :internal_name => 'n51ap', :identifier => 'iPhone6,1', :name => 'iPhone 5s', :image => 'iphone_5s.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1457', :internal_name => 'n51ap', :identifier => 'iPhone6,1', :name => 'iPhone 5s', :image => 'iphone_5s.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A15181', :internal_name => 'n51ap', :identifier => 'iPhone6,1', :name => 'iPhone 5s', :image => 'iphone_5s.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A15281', :internal_name => 'n51ap', :identifier => 'iPhone6,1', :name => 'iPhone 5s', :image => 'iphone_5s.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1530', :internal_name => 'n53ap', :identifier => 'iPhone6,2', :name => 'iPhone 5s', :image => 'iphone_5s.png', :min_os_id => 19, :max_os_id => 25 },
{ :model_number => 'A1549', :internal_name => 'n61ap', :identifier => 'iPhone7,2', :name => 'iPhone 6', :image => 'iphone_6.png', :min_os_id => 22, :max_os_id => 25 },
{ :model_number => 'A1522', :internal_name => 'n56ap', :identifier => 'iPhone7,1', :name => 'iPhone 6 Plus', :image => 'iphone_6plus.png', :min_os_id => 22, :max_os_id => 25 },
{ :model_number => 'A1524', :internal_name => 'n56ap', :identifier => 'iPhone7,1', :name => 'iPhone 6 Plus', :image => 'iphone_6plus.png', :min_os_id => 22, :max_os_id => 25 }
]

device_info.each do |device_hash|
  d = Device.new
  d.manufacturer_id = 1
  d.model_number = device_hash[:model_number]
  d.internal_name = device_hash[:internal_name]
  d.identifier = device_hash[:identifier]
  d.name = device_hash[:name]
  d.image = device_hash[:image]
  d.save
end

puts "There are now #{Device.count} devices in the database."


opsystem_info = [
{ :manufacturer_id => 1, :version_name => 'iPhone OS 1.0', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iPhone OS 2.0', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iPhone OS 3.0', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iPhone OS 3.1.3', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iOS 4.0', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iOS 4.2.1', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iOS 4.2.2', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iOS 5.0', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iOS 6.0', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iOS 6.1.6', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iOS 7.0', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iOS 7.1.2', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iOS 8.0', :is_current => 0 },
{ :manufacturer_id => 1, :version_name => 'iOS 8.4.1', :is_current => 1 }
]

opsystem_info.each do |os_hash|
  o = Opsystem.new
  o.manufacturer_id = os_hash[:manufacturer_id]
  o.version_name = os_hash[:version_name]
  o.is_current = os_hash[:is_current]
  o.save
end

puts "There are now #{Opsystem.count} OpSystems in the database."

a = Manufacturer.new
a.name = "Apple"

puts "'Apple' has been entered into Manufacturers in the database."
