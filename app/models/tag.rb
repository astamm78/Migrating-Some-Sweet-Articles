class Tag < ActiveRecord::Base

  attr_accessible :tag
  
  has_many :joiners
  has_many :articles, :through => :joiners

end
