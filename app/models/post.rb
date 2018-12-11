class Post < ActiveRecord::Base
  belongs_to :topic
  has_many :comments
  validates :description, :url, :presence => true
end
