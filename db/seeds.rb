puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
# t.integer :company_id
    #   t.integer :dev_id
    #   t.string :item_name
    #   t.integer :value  


Freebie.create(item_name: "Facebook Storage",value:903,company_id:1, dev_id:2)
Freebie.create(item_name:"Youtu storage",value:903,company_id: 2, dev_id:1)
Freebie.create(item_name:"Mifflines Stora", value: 903,company_id: 3, dev_id:3)
Freebie.create(item_name:"Enrona", value:903,company_id:4, dev_id:4)

puts "Seeding done!"
