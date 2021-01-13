class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :subject
      t.string :genre
      t.integer :user_id
      t.integer :research_id

      t.timestamps
    end
  end
end
