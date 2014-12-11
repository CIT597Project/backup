class MySchool < ActiveRecord::Base
  belongs_to :user
  belongs_to :school
  
  
  
#  default_scope -> { order('created_at DESC')}
  validates :user_id, presence: true
  validates :school_id, presence: true
  validates :user_id, uniqueness: {scope: :school_id} 
  
end
