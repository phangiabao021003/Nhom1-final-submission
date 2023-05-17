class Order < ApplicationRecord
  belongs_to :client
  belongs_to :point
  belongs_to :discount
  has_many :order_details
  belongs_to :paymentmethod
  belongs_to :buyingmethod
  
validates_presence_of :orderid, :orderdate,  message: "Vui lòng điền lại thông tin"
validates_uniqueness_of :orderid, message: "Thông tin đã tồn tại"
validates_numericality_of :ordercost,  message: "Vui lòng điền lại thông tin"
validate :orderdate_up_to_present

  def orderdate_up_to_present
    if orderdate.present? && orderdate > Time.now
      errors.add(:orderdate, 'Thời gian không hợp lệ. Vui lòng chọn thời gian trong quá khứ hoặc hiện tại.')
    end
  end
end
