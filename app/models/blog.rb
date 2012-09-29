class Blog < ActiveRecord::Base
  attr_accessible :body, :time, :title
  
  validates :title, :presence => true
end
