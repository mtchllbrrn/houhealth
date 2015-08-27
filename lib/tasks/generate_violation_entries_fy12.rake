# full-data.csv presents each violation as a separate row. It makes more sense to model the restaurants and their violations separately with a has-many/belongs-to relationship.  This rake task generates the violation model from the dataset.

task :generate_violation_entries_fy12 => :environment do

  csv_text = File.open('db/data/by-violation/fy12-violations.csv', 'r:ISO-8859-1')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    Violation.create(restaurant_id: row[0],
                     risk: row[2],
                     date: DateTime.strptime(row[4], '%m/%d/%Y'),
                     inspector: row[5],
                     site_name: row[6],
                     code: row[8],
                     weight: row[9],
                     comment: row[10],
                     correct_by: row[11],
                     score: row[12])
  end

end
