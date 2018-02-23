class AddAttachmentImageToTweets < ActiveRecord::Migration[5.1]
  def up
    add_attachment :tweets, :image
  end

  def down
    remove_attachment :tweets, :image
  end
end
