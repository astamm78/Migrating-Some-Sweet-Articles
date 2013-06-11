class Article < ActiveRecord::Base
  
  attr_accessible :category_id, :title

  belongs_to :category
  has_many :joiners
  has_many :tags, :through => :joiners

end
