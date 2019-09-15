User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             coname: 'example.company',
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  coname = "example.company#{n+1}"
  password = "password"
  User.create!(name:  name,
               email: email,
               coname: coname,
               password:              password,
               password_confirmation: password)
end
