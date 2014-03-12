require 'spec_helper'

describe BasketItemsController do

  describe "#create" do
    let(:item) { Item.create!(name: "Celery sticks", price: 450) }
    let(:basket) { Basket.create! }
    it "redirects to items index" do
      post :create, { item_id: item.id, basket_id: basket.id }
      response.should redirect_to items_path
    end

    it "creates a new basket item" do
      post :create, { item_id: item.id, basket_id: basket.id }
      BasketItem.count.should eq 1
    end

    it "sets the item id on the basket item" do
      post :create, { item_id: item.id, basket_id: basket.id }
      BasketItem.where(item_id: item.id).count.should eq 1
    end
    it "sets the basket id on the basket item" do
      post :create, { item_id: item.id, basket_id: basket.id }
      BasketItem.where(basket_id: basket.id).count.should eq 1
    end
  end
end
