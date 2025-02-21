# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.new(username: "PartyPooper27", email: "jessestolworth@email.com", password_digest: "password")
user.save
user = User.new(username: "betsy", email: "betsy@example.com", password_digest: "password")
user.save
user = User.new(username: "ClowningAround", email: "bigfoot42@email.com", password_digest: "password")
user.save
user = User.new(username: "StephenKing68", email: "KephenSting@email.com", password_digest: "password")
user.save
user = User.new(username: "BrianLovesClowns", email: "clowneybrian@email.com", password_digest: "password")
user.save
