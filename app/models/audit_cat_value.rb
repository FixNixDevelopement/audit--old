class AuditCatValue < ActiveRecord::Base
   attr_accessible :auditinits, :categories, :catvalues

  # belongs_to :auditinits
  # belongs_to :categories
  # belongs_to :catvalues
end
