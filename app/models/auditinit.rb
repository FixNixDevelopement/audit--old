class Auditinit < ActiveRecord::Base
  attr_accessible :title,:purpose,:scope,:summary,:start_date,:end_date,:close_date,:target_date,:a_type,:department,:location,:auditor_name,:auditor_email,:auditee_name,:auditee_email,:user_id , :client_name

  # Many to many with categories and Values 
   has_many :audit_cat_values
   has_many :catvalues, :through => :audit_cat_values
   has_many :categories, :through => :audit_cat_values


  # Relation ship with User 
   belongs_to :user

  # Validation
  validates :auditee_email, :auditee_name, :auditor_email , :auditor_name, :title , :presence => true

  # Self Audit
  validate :cannot_audit_self
  def cannot_audit_self
    self.errors[:base] << "You can not audit yourself." if self.auditee_email == self.auditor_email
  end

end
