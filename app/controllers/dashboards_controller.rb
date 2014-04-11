class DashboardsController < ApplicationController
  def index
  	
    @count_audit = current_user.auditinits.where("user_id = ?" , current_user.id)

  end
end

