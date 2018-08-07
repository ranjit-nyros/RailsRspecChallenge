class Comment < ApplicationRecord
  belongs_to :event , optional: true 
  validates_presence_of :comment
end
