class Item < ActiveRecord::Base
  attr_accessible :price, :name, :real, :weight, :description
  validates :price, { numericality: { greater_than: 0, allow_nil: true } }
  validates :name, :description, presence:true

  after_initialize {  } # Item.new; Item.first
  after_save       {  } # Item.save; Item.create: Item.update_attributes()
  after_create     {  }
  after_update     {  }
  after_destroy    {  } # Item.destroy

  has_and_belongs_to_many :carts
end
