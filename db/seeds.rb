# Run this file to populate your database.

robot_names = ["Marvin", "Hadaly", "Gort", "Data", "GIR"]

robot_names.each do |name|
  Robot.create!(name: name)
end

user_first_names = ["Amit", "Ama", "Ariel", "Bob", "Betty", "Chris", "Charlie", "Dave", "Deb", "Eddie", "Joy", "Jane", "Kele", "Mo", "Mariam", "Nick"]
user_last_names = ["Smith", "Jones", "Hall", "Black", "Green", "Booth", "Cohen", "Ali", "Patel", "Clifton", "Chakma", "Singh", "Newton", "Ng", "Bassey", "Ekwueme"]

user_last_names.shuffle.each do |last_name|
  count = rand(16)
  user_first_names.shuffle.take(count).each do |first_name|
    unless User.count >= 100
      User.create!(email: "#{first_name}.#{last_name}@example.com".downcase, password: "password", password_confirmation: "password")
    end
  end
end

sizes = ['8"', '10"', '12"', '18"', '24"']
sizes.each_with_index do |size, i|
  Item.create!(name: "#{size} Spanner Kit", price: 5549, stock: "150", sku: "JJ46#{i}-SPA", description: "Contains 12 #{size} adjustable spanners in a handy carrying case.")
  Item.create!(name: "#{size} Chocolate Cake", price: 2500, stock: "40", sku: "62V#{i}-CCA", description: "A rich chocolate cake. #{size} diameter. Includes serving platter.")
end
Item.create!(name: "Puncture Repair Kit", price: 2499, stock: "100", sku: "BK992-PCR", description: "Puncture repair kit, suitable for all inner tubes. Two patches with sealant.")
Item.create!(name: "Inflatable globe", price: 1259, stock: "460", sku: "F1988-IGL", description: "Inflatable globe. Great for kids. 24\" across when fully inflated.")
Item.create!(name: "2-pin to UK socket adapter", price: 4420, stock: "370", sku: "ADA23F99-2PA", description: "Got a 2 pin plug on your device, but a 3-pin UK socket? Covert between them with this handy device.")
