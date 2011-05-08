class Micropost < ActiveRecord::Base
	belongs_to :user, :class_name=>'Micropost'
	
	validates :content, :length =>{:maximum =>140}
	
end
