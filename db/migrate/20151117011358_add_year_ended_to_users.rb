class AddYearEndedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :year_ended, :integer
  end
end
