class Website < ActiveRecord::Base
  belongs_to :user
  has_many :websiteplacements
  validates_presence_of :name
  validates_presence_of :url
  
  def next_placement
    placement_chance = rand(99)
    chekrot = 0
    wbpltrue = websiteplacements.find(:all, :conditions => ['status = ?',"Accept"])
    wbpltrue.each do |wp|
      chekrot += wp.rotation
    end
    while chekrot < 100
      wbpltrue.map do |wp|
        wp.rotation += 1
        wp.save
      end
      chekrot = 0
      wbpltrue.each do |wp|
        chekrot += wp.rotation
      end
    end    
    wbpltrue.each do |wp|
      placement_chance -= wp.rotation
      if placement_chance < 0
        v = wp.view + 1
        wp.update_attribute(:view, v)
      return wp; 
      end
    end
  end
end


