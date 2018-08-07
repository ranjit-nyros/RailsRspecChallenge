class Event < ApplicationRecord
  belongs_to :user , optional: true 
  validates :title, :description , :start_date , :end_date ,:begin_time,:end_time, presence: true
  validates :location, :entry_type , :contact_person , :mobile_number,:event_category, presence: true
  validates_length_of :title, :minimum => 10, :maximum => 30, :allow_blank => true
  validates_length_of :description, :minimum => 10, :maximum => 1000, :allow_blank => true
  validate :valid_date_range_required
  validate :valid_event_time
  has_many :comments
  
  def valid_date_range_required
    if (start_date && end_date) && (start_date > end_date)
      errors.add(:start_date, "must be less than end_date")
    end
  end  
  def valid_event_time
    if (begin_time && end_time) && (begin_time > end_time)
      errors.add(:begin_time, "must be less than end_time")
    end
  end    
end
