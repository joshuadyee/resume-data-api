Rails.application.routes.draw do
  #student routes
  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  #skill routes
  get "/skills" => "skills#index"
  get "/skills/:id" => "skills#show"
  post "/skills" => "skills#create"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"

  #student_skill routes
  get "/student_skills" => "student_skills#index"
  get "/student_skills/:id" => "student_skills#show"
  post "/student_skills" => "student_skills#create"
  patch "/student_skills/:id" => "student_skills#update"
  delete "/student_skills/:id" => "student_skills#destroy"

  #experience routes
  get "/experiences" => "experiences#index"
  get "/experiences/:id" => "experiences#show"
  post "/experiences" => "experiences#create"
  patch "/experiences/:id" => "experiences#update"
  delete "experiences/:id" => "experiences#destroy"

  #education routes
  get "/educations" => "educations#index"
  get "/educations/:id" => "educations#show"
  post "/educations" => "educations#create"
  patch "/educations/:id" => "educations#update"
  delete "educations/:id" => "educations#destroy"
  
  #capstone routes
  get "/capstones" => "capstones#index"
  get "/capstones/:id" => "capstones#show"
  post "/capstones" => "capstones#create"
  patch "/capstones/:id" => "capstones#update"
  delete "capstones/:id" => "capstones#destroy"

  #login route
  post "/sessions" => "sessions#create"
end
