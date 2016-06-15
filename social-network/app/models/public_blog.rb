class PublicBlog < ActiveRecord::Base
	has_many :comments, dependent: :destroy, as: :commentable
	belongs_to :user
end
