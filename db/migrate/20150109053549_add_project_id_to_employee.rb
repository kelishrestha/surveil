class AddProjectIdToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :project_id, :integer
  end
end
