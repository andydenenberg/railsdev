class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :post
      t.has_attached_file :file
      t.string :url

      t.timestamps
    end
    add_index :attachments, :post_id
  end
  
end
