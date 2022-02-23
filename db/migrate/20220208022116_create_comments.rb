class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :photo, foreign_key: true
      t.string :post_comment

      t.timestamps
    end
  end
end
