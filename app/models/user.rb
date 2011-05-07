class User < ActiveRecord::Base
	validates_presence_of :name, :on => :create, :message => "can't be blank"
	validates_presence_of :email_add, :on => :create, :message => "can't be blank"
	validates_format_of :email_add, :with => /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/, :on => :create, :message => "is invalid"
end
