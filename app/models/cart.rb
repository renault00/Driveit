# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  product_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ActiveRecord::Base
  attr_accessible :product_id, :quantity, :user_id
end
