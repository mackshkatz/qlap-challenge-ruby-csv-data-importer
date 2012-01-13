desc "Load contact data from csv"
task :import_csv => :environment do
	# require 'fastercsv'

	FasterCSV.foreach("lib/tasks/contacts.csv") do |row|
		Contact.create(:name => row[0], :email => row[1], :gender => row[2], :color => row[3], :lucky_number => row[4], :created_at => row[5], :updated_at => row[6])
	end

end