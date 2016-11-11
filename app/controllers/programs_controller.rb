class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def show
    @program = Program.find(params[:id])
  end

  def edit
    @program = Program.find(params[:id])
  end

  def new
    @program = Program.new
  end

  def destroy
  end

  def create
    @program = Program.create!(program_params)
    redirect_to programs_path
  end

  private
  def program_params
    params.require(:program).permit(:name, :version)
  end
end
