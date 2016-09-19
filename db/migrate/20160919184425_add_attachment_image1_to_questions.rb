class AddAttachmentImage1ToQuestions < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.attachment :image1
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :questions, :image1
    remove_attachment :questions, :image2
  end
end
