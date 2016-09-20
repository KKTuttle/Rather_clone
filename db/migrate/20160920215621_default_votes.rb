class DefaultVotes < ActiveRecord::Migration[5.0]
  def change
    change_column :questions, :votes1, :integer, :default => 0
    change_column :questions, :votes2, :integer, :default => 0
  end
end
