class Contact < ActiveRecord::Base

  validates_presence_of :email, :name, :content
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  
  attr_accessor :email, :name, :content
end
