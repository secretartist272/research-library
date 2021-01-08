class CreateResearchSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :research_subjects do |t|
      t.integer :user_id
      t.integer :research_id
      t.string :subject

      t.timestamps
    end
  end
end
