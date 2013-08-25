class AddQeynoDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type, :string
    add_column :users, :title, :string
    add_column :users, :description, :string
    add_column :users, :zip, :string
    add_column :users, :college, :string
    add_column :users, :college_1, :string
    add_column :users, :college_2, :string
    add_column :users, :college_3, :string
    add_column :users, :goal, :string
    add_column :users, :interest, :string
    add_column :users, :photo_id, :integer
    add_column :users, :xptag, :integer
    add_column :users, :xptag_time, :integer
    add_column :users, :affiliation, :string
    add_column :users, :school, :string
  end
end
