namespace :csv do
#grouped everything in the csv namespace since all these tasks are revolving around same issue
# require 'fastercsv'
	desc "Deletes Contacts table to avoid duplicates before loading in data"
	task :table_delete => :environment do
		Contact.destroy_all
	end

	desc "Load contact data from csv"
	task :import => :environment do
		FasterCSV.foreach("lib/tasks/contacts.csv") do |row|
			Contact.create(:name => row[0], :email => row[1], :gender => row[2], :color => row[3], :lucky_number => row[4], :created_at => row[5], :updated_at => row[6])
		end
	end

	desc "First deletes the table and then repopulates it with the CSV"
	task :table_refresh => [:table_delete, :import] do
	end
end