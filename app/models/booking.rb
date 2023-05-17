class Booking < ApplicationRecord
  belongs_to :client
  belongs_to :point
  belongs_to :discount
  belongs_to :paymentmethod
  has_many :BookingDetail

  validates_presence_of :bookingid, :datebooking, :total, message: "Vui lòng điền lại thông tin"
  validates_uniqueness_of :bookingid, :datebooking,  message: "Thông tin đã tồn tại"
  validates_numericality_of :total,  message:"Thông tin sai định dạng"
  validate :datebooking_up_to_present

def datebooking_up_to_present
  if datebooking.present? && datebooking > Time.now
    errors.add(:datebooking, 'Thời gian không hợp lệ. Vui lòng chọn thời gian trong quá khứ hoặc hiện tại.')
  end
end

end
