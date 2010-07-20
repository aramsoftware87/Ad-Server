class User < ActiveRecord::Base
  has_many :websites
  has_many :placements
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :password
  validates_presence_of :utype
  
  def self.authenticate(name, password) 
    user = self.find_by_name(name,:select => "name, password, utype, id")
    if password =! password
        user = false 
    end
  user 
  end
  
  
  def self.sendmepass(email)
    user = self.find_by_email(email, :select => "email, name, password")
  end
end
