
applicant = {
	name: "Bob Loblaw",
	address: "539 Seabreeze Lane, Newport Beach, CA 90909",
	email: "bobloblaw@bobloblawlawblog.com",
	phone: "314-903-5555"

}

=begin
p applicant[:phone]
applicant[:phone] = "659-555-9030"
p applicant[:phone]
applicant[:school] = "UCSD School of Law"
p applicant
p applicant.keys
p applicant.values

my_phone = :phone
p "My number is " + applicant[my_phone]
=end
my_address = applicant[:email] + applicant[:phone]
p applicant[my_address]
p applicant
