# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |i|
  cost_sheet = CostSheet.create(customer_name: "Anthony#{i}", project_number: "PROJ12#{i}")
  3.times do |i|
    config = cost_sheet.configs.create(name: "Robot #{i}")
    2.times do |i|
      config.config_items.create(description: "Item #{i}", markup_percentage: 0.3, unit_cost: 10000, quantity: i)
    end
  end
end
