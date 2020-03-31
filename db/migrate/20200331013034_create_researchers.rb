class CreateResearchers < ActiveRecord::Migration[6.0]
  def change
    create_table :researchers do |t|
      t.datetime :birthday
      t.string :genre_id
      t.string :genre_name
      t.references :birth_region, foreign_key: {to_table: :regions}
      t.string :residence_id
      t.references :residence_region, foreign_key: {to_table: :regions}
      t.references :classification, foreign_key: true
      t.references :education_level, foreign_key: true
      t.float :age_in_years

      t.timestamps
    end
  end
end
