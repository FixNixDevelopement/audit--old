class DashboardsController < ApplicationController
  def index
  	
    @count_audit = Auditinit.find_by_sql("select count(*) as count from auditinits")
    @intern =Auditinit.find_by_sql("select a_type,count(*) as count from auditinits where a_type ='internal'")
    @extern =Auditinit.find_by_sql("select a_type,count(*) as count from auditinits where a_type ='external'")
    @intern1 =Auditinit.find_by_sql("select title,count(title) as share from auditinits where a_type ='internal'")
    @extern1 =Auditinit.find_by_sql("select title,count(title) as share from auditinits where a_type ='external'")

  end
end

