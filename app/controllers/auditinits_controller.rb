class AuditinitsController < ApplicationController

	def index
		@auditinit = current_user.auditinits.all
	end

	def show
		# @auditinit = current_user.auditinit.find(params[:id])
	end

	def new
		@auditinit = current_user.auditinits.new
	end

	def edit
		@auditinit = current_user.auditinits.find(params[:id])
	end

	def create
		@auditinit = current_user.auditinits.new(params[:auditinit])
		if @auditinit.save
			redirect_to auditinits_path
		else
			render action: "new"
		end
	end

	def update
		# @auditinit = current_user.auditinits.find(params[:id])
		# if @auditinits.update_attributes()
	end
end
