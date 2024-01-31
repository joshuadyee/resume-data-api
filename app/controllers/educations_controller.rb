class EducationsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    if params[:student_id].present?
      @educations = Education.where(student_id: params[:student_id])
    else
      @educations = Education.all
    end
    render :index
  end

  def show
    @education = Education.find_by(id: params[:id])
    render :show
  end

  def create
    @education = Education.create(
      student_id: current_student.id,
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university: params[:university],
      details: params[:details]
    )
    if @education.valid?
      render :show
    end
  end

  def update
    @education = Education.find_by(id: params[:id])
    if current_student.id == @education.student_id
      @education.update(
      start_date: params[:start_date] || @education.start_date,
      end_date: params[:end_date] || @education.end_date,
      degree: params[:degree] || @education.degree,
      university: params[:university] || @education.university,
      details: params[:details] || @education.details
      )
      render :show
    else
      render json: {message: "Please login with the right account."}
    end
  end

  def destroy
    @education = Education.find_by(id: params[:id])
    if current_student.id == @education.student_id
      @education.destroy
      render json:{message: "deleted succesfully"}
    else
      render json: {message: "Please login with the right account."}
    end
  end

end
