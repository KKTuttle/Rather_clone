class CreateQuestionsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :author, :string
      t.column :image1, :string
      t.column :caption1, :string
      t.column :votes1, :integer
      t.column :image2, :string
      t.column :caption2, :string
      t.column :votes2, :integer

      t.timestamps
    end
  end
end
