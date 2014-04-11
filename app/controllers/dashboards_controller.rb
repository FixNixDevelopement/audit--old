class DashboardsController < ApplicationController
  def index
  	
    @count_audit = current_user.auditinits.find_by_sql("select count(*) as count from auditinits")
    
  end
end

