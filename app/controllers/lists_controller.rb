class ListsController < ApplicationController
  before_action :authenticate_user!

  layout "lists"
  def index
    @lists = current_user.lists
    # @lists = List.actual
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render "new"
    end
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to @list
    else
      render "edit"
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:header).merge({ "user_id" => current_user.id })
  end
end
