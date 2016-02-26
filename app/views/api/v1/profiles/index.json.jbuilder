json.array! @profiles do |profile|
  json.id profile.id
  json.firstname profile.firstname
  json.lastname profile.lastname  
  json.address1 profile.address1
end