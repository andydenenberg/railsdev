class Attachment < ActiveRecord::Base
  attr_accessible :post_id, :url, :file
  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  belongs_to :post
  
  before_post_process :image?  # skip post_process if not image file
  def image?
    !(file_content_type =~ /^image.*/).nil?
  end
  
end
