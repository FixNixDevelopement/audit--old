class Mailuser < ActiveRecord::Base
  attr_accessible :email, :empid, :password, :username
end
