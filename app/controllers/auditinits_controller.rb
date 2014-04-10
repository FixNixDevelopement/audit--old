class AuditinitsController < ApplicationController

	def index
		@auditinits = current_user.auditinits.all
	end

	def show
		 @auditinit = current_user.auditinits.find(params[:id])
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
			UserMailer.initiate_audit(@auditinit).deliver
        	redirect_to root_path, notice: 'auditinit was successfully created.'
        else
        	render action: "new"
        end
    end

	def update
		@auditinit = current_user.auditinits.find(params[:id])

		if @auditinit.update_attributes(params[:auditinit])
			redirect_to auditinits_path, notice: 'Audit was successfully updated'
		else
			render action: "edit"		
		end
	end

	def destroy
		@auditinit = current_user.auditinits.find(params[:id])
		@auditinit.destroy
		redirect_to auditinits_url
	end
end