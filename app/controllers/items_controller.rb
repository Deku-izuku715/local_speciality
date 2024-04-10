class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  def new
    @item = Item.new
  end
  def create
    if Item.create(item_params)
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:prefecture, :title, :text, :image).merge(user_id: current_user.id)
  end
end
