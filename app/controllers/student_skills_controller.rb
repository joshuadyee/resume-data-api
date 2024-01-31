class StudentSkillsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    @student_skills = StudentSkill.all
    render :index
  end

  def show
    @student_skill = StudentSkill.find_by(id: params[:id])
    render :show
  end

  def create
    @student_skill = StudentSkill.new(
      student_id: current_student.id,
      skill_id: params[:skill_id],
    )
    
    if @student_skill.save 
      render :show
    else
      render json: {message: "Please enter the correct Skill ID"}, status: :unprocessable_entity
    end
  end

  def update
    @student_skill = StudentSkill.find_by(id: params[:id])
    if current_student.id == @student_skill.student_id
      @student_skill.skill_name = params[:skill_name] || @student_skill.skill_name
      if @student_skill.save
        render :show
      end
    else
      render json: {message: "You must be logged into the correct account"}, status: :unprocessable_entity
    end
  end

  def destroy
    @student_skill = StudentSkill.find_by(id: params[:id])
    if current_student.id == @student_skill.student_id
      @student_skill.destroy
      render json: {message: "Skill successfully deleted"}
    else
      render json: {message: "You must be logged into the correct account"}, status: :unprocessable_entity
    end
  end
end
