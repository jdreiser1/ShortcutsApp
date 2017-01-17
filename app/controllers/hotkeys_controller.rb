class HotkeysController < ApplicationController
  before_action :get_hotkey, only: [:show, :edit, :update, :destroy, :add_favorite, :remove_favorite]

  def get_hotkey
    @hotkey = Hotkey.find(params[:id])
  end

  def add_favorite
    @favorite = Favorite.create!(user: @current_user, hotkey: @hotkey)
    @hotkey.numOfFavorite += 1
    @hotkey.save
    redirect_to programs_path
  end

  def remove_favorite
    @favorite = Favorite.find_by(user: @current_user, hotkey: @hotkey)
    @favorite.destroy
    @hotkey.numOfFavorite += 1
    redirect_to programs_path
  end

  def index
    redirect_to root_path unless @current_user
    @hotkeys = Hotkey.all
  end


  def new
    redirect_to root_path unless @current_user
    @hotkey = Hotkey.new
    @program = Program.find(params[:program_id])
  end

  def edit
    redirect_to root_path unless @current_user
    @program = Program.find(params[:program_id])
  end

  def create
    if params[:hotkey][:name] == ""
      flash[:alert] = "Name can't be blank!"
      redirect_to new_program_path
    else
      hotkey = Hotkey.new(hotkey_params)
      hotkey.program_id = params[:program_id]
      if hotkey.save
        flash[:notice] = "Hotkey was successfully saved!"
        redirect_to program_path(params[:program_id])
      else
        render :new
      end
    end
  end

  def destroy
    @hotkey.destroy
    redirect_to program_path(params[:program_id])
  end

  def update
    @hotkey.update(hotkey_params)
    @program = Program.find(params[:program_id])
    redirect_to @program
  end

  private
  def hotkey_params
    params.require(:hotkey).permit(:name, :function)
  end
end
