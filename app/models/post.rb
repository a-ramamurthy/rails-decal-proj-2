class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comment
  has_and_belongs_to_many :tag
  validates :title, :body, presence: true
end
