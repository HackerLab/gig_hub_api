class Gig < ActiveRecord::Base
  attr_accessible :company, :location, :commitment, :name, :description, :url
  validates :company, :presence => true, :length => {:maximum => 20}
  validates :location, :presence => true, :length => {:maximum => 20}
  validates :commitment, :presence => true, :length => {:maximum => 20}
  validates :name, :presence => true, :length => {:maximum => 60}
  validates :description, :presence => true, :length => {:maximum => 1500}
  validates :url, :length => {:maximum => 255}
end
