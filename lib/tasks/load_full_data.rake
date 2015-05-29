require 'csv'    

task :load_full_data => :environment do
  csv_text = File.read('db/full-data.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    Violation.create!(row.to_hash)
  end
end
