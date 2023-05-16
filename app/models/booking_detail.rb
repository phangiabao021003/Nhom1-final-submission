class BookingDetail < ApplicationRecord
  belongs_to :booking
  belongs_to :service

  validates_presence_of :bookingdetailid, :time, message: "Vui lòng điền lại thông tin"
  validates_uniqueness_of :bookingdetailid, message: "Thông tin đã tồn tại"
  validate :time_up_to_30_days_from_now

  def time_up_to_30_days_from_now
    if time.nil? || time > Time.now + 30.days
    errors.add(:time, 'Thời gian không hợp lệ. Không thể đặt trước quá 30 ngày so với hiện tại')
    end
  end



end
