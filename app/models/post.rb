class Post < ActiveRecord::Base
  belongs_to :topic
  has_many :comments
  validates :description, :url, :presence => true

  def since
    (Time.current - self.created_at)/60
  end
end
