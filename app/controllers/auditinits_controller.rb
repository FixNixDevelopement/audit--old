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
		@auditinit = Auditinit.new(params[:auditinit])

		respond_to do |format|
			if @auditinit.save
		
		UserMailer.initiate_audit(@auditinit).deliver
        format.html { redirect_to @auditinit, notice: 'auditinit was successfully created.' }
        format.json { render json: @auditinit, status: :created, location: @auditinit }
      else
        format.html { render action: "new" }
        format.json { render json: @auditinit.errors, status: :unprocessable_entity }
      end
    end
  end




	def update
		# @auditinit = current_user.auditinits.find(params[:id])
		# if @auditinits.update_attributes()
	end
end