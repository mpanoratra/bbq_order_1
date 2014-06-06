class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items
  has_many :items, through: :order_items

  delegate :items_by_the_pound, :items_by_the_cup, :items_by_the_rib, to: :items
end
