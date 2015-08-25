class Api::V1::ItemsController < ApplicationController

  def index
    render :json List.find(params[:id]).items
  end

  def create
    render :json Item.create(list_params)
  end

  def update
    render :json Item.update(params[:id], list_params)
  end

  def show
    render :json Item.find(params[:id])
  end

  def destroy
    render :json Item.destroy(params[:id])
  end

  private

  def list_params
    params.require(:item).permit(:description, :list_id)
  end
end