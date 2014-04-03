class Auditinit < ActiveRecord::Base
  attr_accessible :a_close_date, :a_end_date, :a_note, :a_purpose, :a_scope, :a_start_date, :a_summary, :a_target_date, :a_title

  # Many to many with categories and Values 
  has_many :audit_cat_values, :dependent => :destroy
  has_many :catvalues, :through => :audit_cat_values
  has_many :categories, :through => :audit_cat_values
end
