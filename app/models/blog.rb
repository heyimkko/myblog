class Blog < ActiveRecord::Base
  attr_accessible :body, :time, :title
  
  validates :title, :presence => true, length: { maximum: 99 }
  validates :body, :presence => true, length: { maximum: 999 }
end
