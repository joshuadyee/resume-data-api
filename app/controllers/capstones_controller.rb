class CapstonesController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    @capstones = Capstone.all
    render :index
  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    render :show
  end

  def create
    @capstone = Capstone.create(
      student_id: current_student.id,
      name: params[:name],
      description: params[:description],
      url: params[:url],
      image: params[:image],
    )
    if @capstone.valid?
      render :show
    end
  end

  def update
    @capstone = Capstone.find_by(id: params[:id])
    if current_student.id == @capstone.student_id
      @capstone.update(
      name: params[:name] || @capstone.name,
      description: params[:description] || @capstone.description,
      url: params[:url] || @capstone.url,
      image: params[:image] || @capstone.image,
      )
      render :show
    else
      render json: {message: "Please login with the right account."}
    end
  end

  def destroy
    @capstone = Capstone.find_by(id: params[:id])
    if current_student.id == @capstone.student_id
      @capstone.destroy
      render json:{message: "deleted succesfully"}
    else
      render json: {message: "Please login with the right account."}
    end
  end
end
