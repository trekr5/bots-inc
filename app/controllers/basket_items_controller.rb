class BasketItemsController < ApplicationController

  def create
    item = Item.find(params[:item_id])
    BasketItem.create(item_id: item.id, basket_id: params[:basket_id])
    redirect_to items_path, notice: "#{item.name} added to basket."
  end


end
