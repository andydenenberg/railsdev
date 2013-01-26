class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body, :category, :title, :user_id, :attachments_attributes
  has_many :attachments, :dependent => :destroy
  accepts_nested_attributes_for :attachments, :allow_destroy => true
  
  
  def next
    post = Post.where("posts.id > ?", self.id).order("posts.id ASC").limit(1)
    post.empty? ? Post.last : post.first
  end

  def previous
    post = Post.where("posts.id < ?", self.id).order("posts.id DESC").limit(1)
    post.empty? ? Post.first : post.first
  end
end
