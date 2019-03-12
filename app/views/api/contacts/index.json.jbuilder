# json.contact @person
# json.updated_at @person.friendly_updated_at

json.array! @person.each do |person|
  json.id person.id
  json.first_name person.first_name
  json.middle_name person.middle_name
  json.last_name person.last_name
  json.email person.email
  json.phone_number person.phone_number
  json.updated_at person.friendly_updated_at
  json.full person.full_name
  json.bio person.bio
  json.current_user current_user
end
  
