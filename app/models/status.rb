class Status < ActiveRecord::Base
	attr_accessible :content, :user_id
	belongs_to :user # using this ruby command assumes status has field user_id and foreign key matches up with id key; adds a "user" property to our Status object
end
