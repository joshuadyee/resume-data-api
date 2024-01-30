class ExperiencesController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    @experiences = Experience.all
    render :index
  end
  def show
    @experience = Experience.find_by(id: params[:id])
    render :show
  end
  def create
    @experience = Experience.create(
      student_id: params[:student_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company: params[:company],
      details: params[:details]
    )
    render :show
  end
  def update
    @experience = Experience.find_by(id: params[:id])
    if current_student.id == @experience.student_id
      @experience.update(
      start_date: params[:start_date] || @experience.start_date,
      end_date: params[:end_date] || @experience.end_date,
      job_title: params[:job_title] || @experience.job_title,
      company: params[:company] || @experience.company,
      details: params[:details] || @experience.details
      )
      render :show
    else
      render json: {message: "Please login with the right account."}
    end
  end
  def destroy
    @experience = Experience.find_by(id: params[:id])
    if current_student.id == @experience.student_id
      @experience.destroy
      render json:{message: "deleted succesfully"}
    else
      render json: {message: "Please login with the right account."}
    end
  end
end
