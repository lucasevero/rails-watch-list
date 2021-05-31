class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list.update(params[:id])

    redirect_to list_path(@list)
  end

  def destroy
    @list.destroy

    redirect_to lists_path
  end

  private

  def list_params
    params.require(List).permit(:name)
  end
end
