# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

3.times do |topi|
  Topi.create(
       title:" topic #{topi}"
  )
end



6.times do |blog|
    Blog.create!(
        Title: "blogNo #{blog}",
        Body: "last random body ",
        topi_id: Topi.last.id
    )
end

5.times do |blog|
  Blog.create!(
      Title: "blogNo #{blog}",
      Body: "random body first",
      topi_id: Topi.first.id
  )
end

puts "5 blog posts created"

  10.times do |skill|
    Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 15
    )
  end

  puts "5 skills created"

  9.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      main_image: "https://via.placeholder.com/300",
      thumb_image: "https://via.placeholder.com/150",
      subtitle: "angular"

          ) 
  end

  3.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      main_image: "https://via.placeholder.com/300",
      thumb_image: "https://via.placeholder.com/150",
      subtitle: "ROR"

          ) 
  end
  puts "9 portfolio items created"

  6.times do |technology|
    Portfolio.last.technologies.create!(
      name: " technology #{technology}"
    )