class CreateAttachedFiles < ActiveRecord::Migration
  def change
    create_table :attached_files do |t|
      t.string :file
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
