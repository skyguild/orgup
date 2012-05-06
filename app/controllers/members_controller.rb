class MembersController < InheritedResources::Base
	def index
		redirect_to member_path(current_member)
	end
end
