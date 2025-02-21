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

Clown.create(name: "Bozo", specialty: "Large shoes", rates: 150)
Clown.create(name: "Krusty", specialty: "Balloon animals", rates: 180)
Clown.create(name: "Pennywise", specialty: "Sharp teeth", rates: 210)

Booking.create(clown_id: 1, user_id: 1, duration: 1800, rating: 3, arrival_time: "19:00:00", departure_time: "19:30:00", event_date: "2025-02-21")
Booking.create(clown_id: 2, user_id: 3, duration: 3600, rating: 5, arrival_time: "12:00:00", departure_time: "13:00:00", event_date: "2025-02-24")
Booking.create(clown_id: 3, user_id: 5, duration: 1800, rating: 1, arrival_time: "11:00:00", departure_time: "11:30:00", event_date: "2025-02-26")