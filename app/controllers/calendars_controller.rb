class CalendarsController < ApplicationController
	def index
		@auditinits = Auditinit.all
	end
end
