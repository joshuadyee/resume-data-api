class CapstonesController < ApplicationController
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
      student_id: params[:student_id],
      name: params[:name],
      description: params[:description],
      url: params[:url],
      image: params[:image],
    )
    render :show
  end
  def update
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.update(
      name: params[:name] || @capstone.name,
      description: params[:description] || @capstone.description,
      url: params[:url] || @capstone.url,
      image: params[:image] || @capstone.image,
    )
    render :show
  end
  def destroy
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.destroy
    render json:{message: "deleted succesfully"}
  end
end
