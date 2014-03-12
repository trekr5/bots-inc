class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :basket
  has_many :purchases


  def basket
    @basket ||= Basket.find_or_create_by(user_id: id)
  end
end
