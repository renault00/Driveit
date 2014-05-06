# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  car_model   :string(255)
#  car_year    :string(255)
#  car_color   :string(255)
#  mileage     :string(255)
#  price       :decimal(, )
#  image       :string(255)
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :car_color, :car_model, :car_year, :category_id, :image, :mileage, :name, :price, :product_id
end
