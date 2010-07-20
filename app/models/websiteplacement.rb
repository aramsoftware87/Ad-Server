class Websiteplacement < ActiveRecord::Base
  belongs_to :placement
  belongs_to :website
  validates_numericality_of :rotation, :message => "please enter the numeric value"
  validates_inclusion_of :rotation, :in => 1..100, :message => "Enter valid number between 1 and 100"
  
  def ad_click
    self.click += 1
    self.save
  end
  
end
