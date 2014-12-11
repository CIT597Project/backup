

require 'open-uri'
require 'csv'


# open("https://inventory.data.gov/dataset/032e19b4-5a90-41dc-83ff-6e4cd234f565/resource/38625c3d-5388-4c16-a30f-d105432553a4/download/postscndryunivsrvy2013dirinfo.csv") do |src|
#   csv_text = src.read
#   csv = CSV.parse(csv_text, :headers => true)
#
#   csv.each do |row|
#     School.create!(row.to_hash)
#   end
# end

# csv_text = File.read('app/assets/users.csv')
# csv = CSV.parse(csv_text, :headers => false)
# csv.each do |row|
#   Schoollist.create!(row.to_hash)
# end

# CSV.foreach('app/assets/users.csv', :headers => true) do |row|
#   School.create!(row.to_hash)
# end