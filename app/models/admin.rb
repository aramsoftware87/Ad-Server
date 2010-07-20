class Admin < ActiveRecord::Base
   validates_presence_of :name
    validates_presence_of :password
  #  validates_format_of :email, /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update, :message => "please correct email address"
    validates_format_of :email,
                        :with =>  /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                        :message => "Its not a valid format"
    validates_format_of  :name ,
                         :with => /^[A-Za-z.]*\z/,
                         :message => "Cannot contain Numbers,White Space"
end