1000000.times do
  Rsvp.create(
    :first_name => Faker::Name.first_name,
    :last_name => Faker::Name.last_name,
    :attending => true,
    :vegetarian => false,
    :guests => rand(0..7),
    :user_id => rand(1..1000)
    )
end

Rsvp.create(
  :first_name => Faker::Name.first_name,
  :last_name => Faker::Name.last_name,
  :attending => true,
  :vegetarian => false,
  :guests => rand(0..7),
  :user_id => 1001
)