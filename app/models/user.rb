class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :events
  validates_presence_of :first_name , :last_name
  def name
    return "#{self.first_name} #{self.last_name}"
  end  
end
