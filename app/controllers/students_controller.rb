class StudentsController < ApplicationController
  def index
    @students = Student.all
    render :index
  end

  def show
    @student = Student.find_by(id: params[:id])
    render :show
  end

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
      password_digest: params[:password_digest],
    )
    if @student.save!
      render json: {message: "Student successfully created"}, status: :created
    else
      render json: {errors: @student.errors.full_messages}, status: :bad_request
    end
  end

  def update 
    @student = Student.find_by(id: params[:id])
    @student.first_name = params[:first_name] || @student.first_name 
    @student.last_name = params[:last_name] || @student.last_name 
    @student.email = params[:email] || @student.email 
    @student.phone_number = params[:phone_number] || @student.phone_number 
    @student.bio = params[:bio] || @student.bio 
    @student.linkedin_url = params[:linkedin_url] || @student.linkedin_url 
    @student.twitter_handle = params[:twitter_handle] || @student.twitter_handle 
    @student.website_url = params[:website_url] || @student.website_url 
    @student.resume_url = params[:resume_url] || @student.resume_url 
    @student.github_url = params[:github_url] || @student.github_url 
    @student.photo = params[:photo] || @student.photo 
    @student.password_digest = params[:password_digest] || @student.password_digest 

    if @student.save!
      render :show
    else
      render json: {message: @student.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    render json: {message: "Student account successfully deleted"}
  end
end
