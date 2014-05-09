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
  
  mount_uploader :image, ImageUploader

  def self.search(search)
  	if search
  		
  		where('name LIKE ? OR car_color LIKE ? OR car_model LIKE ? OR car_year LIKE ? ',"%#{search}", "%#{search}", "%#{search}", "%#{search}")

  	else
  		scoped
  	end

  end
end
