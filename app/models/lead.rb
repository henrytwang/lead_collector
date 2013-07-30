class Lead < ActiveRecord::Base
  attr_accessible :name, :email, :phone

  validates_presence_of :name
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_format_of :phone, :with => /[^a-zA-Z]{10,}/

end
