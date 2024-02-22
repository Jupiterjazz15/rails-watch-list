puts List.count
puts "Lists are destroyed"
List.destroy_all
puts "Here are my new lists"
List.create!(name: "Korean movies")
List.create!(name: "SF movies")
puts List.count
