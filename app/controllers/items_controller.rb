class ItemsController < ApplicationController
  def index
    @items = Item.includes(:user)
  end
  def new
    @item = Item.new
  end
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  private
  def item_params
    params.require(:item).permit(:prefecture, :title, :text, :image).merge(user_id: current_user.id)
  end
end
