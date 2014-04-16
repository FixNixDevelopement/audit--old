class CatvaluesController < ApplicationController
	def index
		@catvalue = Catvalue.new
		@catvalues = Catvalue.all
		@departments = Catvalue.find(:all, :conditions => ['categories_id = 1'])
		@locations = Catvalue.find(:all, :conditions => ['categories_id = 2'])
		@teams = Catvalue.find(:all, :conditions => ['categories_id = 3'])
	end

	def create
		@catvalue = Catvalue.new(params[:catvalue])
		if @catvalue.save
			redirect_to catvalues_path
		else
			render 'new'
		end
	end

	def shows
	end

  def destroy
    @catvalue_del = Catvalue.find(params[:id])
    @catvalue_del.destroy
    redirect_to catvalues_path
  end

end