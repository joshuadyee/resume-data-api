json.id student.id
json.first_name student.first_name
json.last_name student.last_name
json.email student.email
json.phone_number student.phone_number
json.bio student.bio
json.linkedin_url student.linkedin_url
json.twitter_handle student.twitter_handle
json.website_url student.website_url
json.resume_url student.resume_url
json.github_url student.github_url
json.photo student.photo
json.skills student.skills.map do |skill|
  json.skill_name skill.skill_name
end
