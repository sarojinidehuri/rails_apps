class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :story
	belongs_to :public_blog
    has_many :comments, dependent: :destroy
end
