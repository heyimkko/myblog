class Blog < ActiveRecord::Base
  attr_accessible :body, :time, :title
  
  validates :title, :presence => true, length: { maximum: 25 }
  validates :body, :presence => true, length: { maximum: 999 }

  default_scope order: 'blogs.created_at DESC'
end
