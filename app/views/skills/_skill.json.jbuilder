json.id skill.id
json.skill_name skill.skill_name
json.skills skill.students.map do |student|
  json.first_name student.first_name
  json.last_name student.last_name
end