class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :user, foreign_key: true
      t.string :picture_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
