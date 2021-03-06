class ChampionsController < ApplicationController

   def index
     @champions = Champion.all
   end

   def show
     @champion = Champion.find(params[:id])
   end

   def new
     @champion = Champion.new
   end

   def edit
     @champion = Champion.find(params[:id])
   end


   def create
     @champion = Champion.new(champion_params)
     @champion.save
     redirect_to champion_path(@champion)
   end

   def update
     @champion = Champion.find(params[:id])
     @champion.update(champion_params)
     @champion.save

     redirect_to champion_path(@champion)
   end


   private

 def champion_params
   params.require(:champion).permit(:name, :img_url, :video_url, :description)
 end


  end
