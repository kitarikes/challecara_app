class CreateSubjectImages < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_images do |t|
      t.string :image
      t.integer :subject_id

      t.timestamps
    end
  end
end
