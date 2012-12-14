class Event < ActiveRecord::Base
  attr_accessible :content, :time, :title
  validates :title, :presence => true
  validates :content, :presence => true
end
