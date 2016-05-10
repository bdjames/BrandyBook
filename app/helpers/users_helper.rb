module UsersHelper
	def friend_buttons(user)
		case current_user.friendship_status(user)
			when "not_friends"
			link_to "Add Friend", friendships_path(user_id: user.id), method: :post
			when "friends"
			"Remove Friend"
			when "pending"
			"Cancel Request"
			when "requested"
			"Accept or Deny"			
		end
	end
end
