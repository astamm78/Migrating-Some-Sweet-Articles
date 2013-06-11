class Joiner < ActiveRecord::Base
  
  belongs_to :tag
  belongs_to :article
  attr_accessible :article_id, :tag_id

end
