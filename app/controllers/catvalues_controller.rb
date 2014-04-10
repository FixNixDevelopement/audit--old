class CatvaluesController < ApplicationController
	def index
		@catvalue = Catvalue.new
		@catvalues = Catvalue.all
		@categories = Category.all
	end

	def create
		@catvalue = Catvalue.new(params[:catvalue])
		if @catvalue.save
			redirect_to configures_path
		end
	end

	def show
		super
	end

  def destroy
    @catvalue_del = Catvalue.find(params[:id])
    @catvalue_del.destroy
    redirect_to configures_path
  end

end