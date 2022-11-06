puts "Creating companies..."
company1 = Company.create(name: "Google", founding_year: 1998)
company2 =Company.create(name: "Facebook", founding_year: 2004)
company3 =Company.create(name: "Dunder Mifflin", founding_year: 2002)
company4 =Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
dev1 = Dev.create(name: "Rick")
dev2 = Dev.create(name: "Morty")
dev3 = Dev.create(name: "Mr. Meseeks")
dev4 = Dev.create(name: "Gazorpazop")

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
puts "Creating freebies..."
Freebie.create(company_id: company3.id,dev_id: dev2.id, item_name: "ParamInfo", value: 30000)
Freebie.create(company_id: company4.id,dev_id: dev1.id, item_name: "Alpana", value: 35000)
Freebie.create(company_id: company1.id,dev_id: dev3.id, item_name: "Wandr studio", value: 60000)
Freebie.create(company_id: company2.id,dev_id: dev4.id, item_name: "Beyond", value: 40000)

puts "Seeding done!"
