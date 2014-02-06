class AddJobTitleProfileTwitterToUsers < ActiveRecord::Migration
  def change
    add_column :users, :job_title, :string
    add_column :users, :profile, :text
    add_column :users, :twitter, :string
  end
end
