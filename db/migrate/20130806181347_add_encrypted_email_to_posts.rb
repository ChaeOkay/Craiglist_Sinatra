class AddEncryptedEmailToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :secure_email, :string
  end
end
