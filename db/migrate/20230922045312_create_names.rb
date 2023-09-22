class CreateNames < ActiveRecord::Migration[7.0]
  def change
    create_table :names do |t|
      t.string :nconst
      t.string :full_name
      t.string :birth_year
      t.string :death_year
      t.string :primary_profession
      t.string :known_for_titles

      t.timestamps
    end
  end
end
