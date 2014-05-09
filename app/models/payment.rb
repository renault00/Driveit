# == Schema Information
#
# Table name: payments
#
#  id             :integer          not null, primary key
#  payment_method :string(255)
#  user_id        :integer
#  order_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Payment < ActiveRecord::Base
  attr_accessible :order_id, :payment_method, :user_id
  belongs_to :order
end
