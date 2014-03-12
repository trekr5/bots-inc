require 'spec_helper'

describe User do

  subject do
    User.create!(email: "eve@example.com",
               password: 'password',
               password_confirmation: 'password')
  end

  describe "#basket" do
    it "returns the basket if there is a basket in the db" do
      basket = Basket.create!(user_id: subject.id)
      subject.basket.should eq basket
    end
    it "creates a new basket if there is no basket already" do
      subject.basket.should_not be_nil
    end
  end

end
