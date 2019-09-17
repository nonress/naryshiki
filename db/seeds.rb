User.create!(name:  "enui",
             email: "enui@naryshiki.com",
             coname: 'enui551',
             password:              "hogehoge",
             password_confirmation: "hogehoge",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  coname = "example.company#{n+1}"
  password = "password"
  User.create!(name:  name,
               email: email,
               coname: coname,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
