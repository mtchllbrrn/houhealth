require 'csv'

task :generate_restaurant_entries_fy13 => :environment do

  csv_text = File.read('db/data/by-violation/fy13-violations.csv')
  csv_text.encode!('UTF-8', 'UTF-8', :invalid => :replace)
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    account_number = row[0]
    if !(Restaurant.exists? account_number: account_number)
      Restaurant.create(account_number: row[0],
                        facility_name: row[1],
                        facility_type: row[3],
                        address: row[7],
                        number_of_employees: row[14])
    end
  end

end
