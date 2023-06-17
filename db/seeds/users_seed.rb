
Geolocation.find_or_create_by(
department_id: 1,
province_id: 1,
country_id: 1
)

Client.find_or_create_by(
    name: "Itep Arequipa",
    email: "itep@.com",
    phone: "99214975",
    address: "calle arequipa",
    slug: "URL",
    tradename: "Itep Arequipa",
    description: "itep arequipa",
    geolocation_id: 1
)

User.find_or_create_by(email: 'super@super.com') do |user|
  user.name = 'SuperAdmin',
  user.phone = '989411601',
  user.user_type = 0,
  user.password = "123456"
  user.client_id = 1

end