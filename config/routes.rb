Rails.application.routes.draw do
  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  get "/skills" => "skills#index"
  get "/skills/:id" => "skills#show"
  post "/skills" => "skills#create"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"

  get "/student_skills" => "student_skills#index"
  get "/student_skills/:id" => "student_skills#show"
  post "/student_skills" => "student_skills#create"
  patch "/student_skills/:id" => "student_skills#update"
  delete "/student_skills/:id" => "student_skills#destroy"
end
