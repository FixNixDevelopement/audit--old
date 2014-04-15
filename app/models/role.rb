class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles
  attr_accessible :name,  :role_ids
  belongs_to :resource, :polymorphic => true
  belongs_to :sample, :inverse_of => :roles
  validates :sample, :presence => true
  scopify
 
  # attr_accessible :title, :body
end
