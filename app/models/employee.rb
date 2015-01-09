class Employee < ActiveRecord::Base
  belongs_to :project
  attr_accessible :designation, :email_address, :name, :password, :username
  # attr_accessible :title, :body
end
