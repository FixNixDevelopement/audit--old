class Auditinit < ActiveRecord::Base
  attr_accessible :title,:purpose,:scope,:summary,:start_date,:end_date,:close_date,:target_date,:a_type,:department,:location,:auditor_name,:auditor_email,:auditee_name,:auditee_email,:user_id , :client_name

  # Many to many with categories and Values 
  has_many :audit_cat_values, :dependent => :destroy
  has_many :catvalues, :through => :audit_cat_values
  has_many :categories, :through => :audit_cat_values


  belongs_to :user
end
