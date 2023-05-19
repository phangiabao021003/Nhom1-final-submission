class Purchasing < ApplicationRecord
  belongs_to :store
  belongs_to :product
  belongs_to :supplier

  validates_presence_of :purchasingid, :unit, :note, :datepurchasing, message: "Vui lòng điền lại thông tin"
  validates_numericality_of :number_of_unit, :purchasingcost,  message: "Vui lòng điền lại thông tin"
  validates_uniqueness_of :purchasingid,  message: "Thông tin đã tồn tại"
  validate :datepurchasing_up_to_present
  def datepurchasing_up_to_present
    if datepurchasing.present? && datepurchasing > Time.now
      errors.add(:datepurchasing, 'Thời gian không hợp lệ. Vui lòng chọn thời gian trong quá khứ hoặc hiện tại.')
    end
  end
end
