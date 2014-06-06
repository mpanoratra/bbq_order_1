class Item < ActiveRecord::Base
  has_many :order_items
  self.inheritance_column = :category
  

  scope :items_by_the_pound, -> {where(category: 'ByThePound')}
  scope :items_by_the_rib, -> {where(category: 'ByTheRib')}
  scope :items_by_the_cup, -> {where(category: 'ByTheCup')}
end
