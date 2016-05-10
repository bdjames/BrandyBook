class Friendship < ActiveRecord::Base
	belongs_to :user
	belongs_to :friend, class_name: "User"

	def accept_friendship
		Self.update_attributes(state: "active", friended_at: Time.now)
	end

def deny_friendship
	Self.destroy
	
	end

def cancel_friendship
	Self.destroy

	end
end
