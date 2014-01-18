class Status < ActiveRecord::Base
	attr_accessible :content, :user_id # doesn't work when removing this line even though we have code in the status controller for permit; think it has to do with "protected" vs "private" and the code is different between the status and app/user controller
	belongs_to :user # using this ruby command assumes status has field user_id and foreign key matches up with id key; adds a "user" property to our Status object
end
