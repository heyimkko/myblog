require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  describe "must not save if the title is missing" do
	blog = Blog.new
	blog.save
	assert blog.errors[:title].include? "can't be blank"
	end
end
