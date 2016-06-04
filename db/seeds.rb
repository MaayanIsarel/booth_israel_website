# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Alumniinfo.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
puts row.inspect

u = User.find_by(:email => row['booth_email'])
unless u
  u = User.new
end
  u.email = row['booth_email']
  u.password = row['Name'].gsub(" ","").downcase
  u.password_confirmation = row['Name'].gsub(" ","").downcase
  u.save

  t = Alumni.find_by(:booth_email => row['booth_email'])
  unless t
  t = Alumni.new
  end

  t.user_id = u.id
  t.name = row['Name']
  t.classof = row['classof']
  t.user_type = row['user_type']
  t.current_employer = row['current_employer']
  t.past_employers = row['past_employers']
  t.current_location = row['current_location']
  t.booth_email = row['booth_email']
  t.home_email = row['home_email']
  t.linkedin = row['linkedin']
  t.phone = row['phone']
  t.program = row['program']
  t.save
  puts "#{t.name}, #{t.class} saved"
end

puts "There are now #{Alumni.count} rows in the Alumni table"
