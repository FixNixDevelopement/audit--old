class Category < ActiveRecord::Base
  attr_accessible :c_name
  has_many :catvalues
  # belongs_to :auditinit
end
