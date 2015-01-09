class AddNameAndDesignationAndUsernameAndPasswordAndEmailAddressToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :name, :string
    add_column :employees, :designation, :string
    add_column :employees, :username, :string
    add_column :employees, :password, :string
    add_column :employees, :email_address, :string
  end
end
