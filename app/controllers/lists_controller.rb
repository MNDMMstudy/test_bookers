class ListsController < ApplicationController

  def create
    flash[:notice] = "successfully"
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list.id)
    else
      @lists = List.all
      render :index
    end
  end

  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    flash[:notice] = "successfully"
    @list = List.find(params[:id])
  end

  def update
    flash[:notice] = "successfully"
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  def destroy
    flash[:notice] = "successfully"
   list = List.find(params[:id])
   list.destroy
   redirect_to '/books'
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end

end
