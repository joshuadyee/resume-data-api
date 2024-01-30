class SkillsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    @skills = Skill.all
    render :index
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render :show
  end

  def create
    @skill = Skill.new(
      skill_name: params[:skill_name]
    )
    if @skill.save
      render :show
    else
      render json: {error: @skill.errors.full_messages}, status: :bad_create
    end
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.skill_name = params[:skill_name] || @skill.skill_name
    if @skill.save
      render :show
    else
      render json: {error: @skill.errors.full_messages}, status: :bad_update
    end
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy
    render json: {message: "Skill successfully deleted"}
  end
end
