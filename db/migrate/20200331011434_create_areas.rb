class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string :alphanumeric_id
      t.string :name_esp
      t.string :name_area
      t.string :name_gran_area

      t.timestamps
    end
  end
end
