class Placement < ActiveRecord::Base
  belongs_to :user
  has_many :websiteplacements
  validates_presence_of :name
  validates_presence_of :image
  validates_presence_of :url
end
