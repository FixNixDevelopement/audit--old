class Catvalue < ActiveRecord::Base
  attr_accessible :v_name , :categories_id
  belongs_to :category
  # belongs_to :auditinit
end
