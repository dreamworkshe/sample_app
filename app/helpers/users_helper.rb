module UsersHelper

	# Returns the Gravatar for the given user.
	def gravatar_for(user, option = { size: 50 })
		gravatar_id = Digest::MD5::hexdigest(user.email)
		size = option[:size]
		gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
