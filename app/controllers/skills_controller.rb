class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
    # champion_names makes more sense
    @champion_champion = Champion.all.map{ |champion| champion.name}
  end

  def create
    @skill = Skill.new(skill_params)
    puts "=========================#{params[:skill][:champion]}"
    @skill.champion = Champion.find_by(name: params[:skill][:champion])
    @skill.save
    redirect_to skill_path(@skill)
  end

  def update
    @skill = Skill.find(params[:id])
    @skill.update(skill_params)
    redirect_to skill_path(@skill)
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to champions_path
  end

  private
  def skill_params
    params.require(:skill).permit(:name, :img_url, :video_url, :description)
  end
end
