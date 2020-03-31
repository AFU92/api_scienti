class CreateRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :regions do |t|
      t.string :city
      t.string :state
      t.string :country
      t.string :name
      t.string :dane_code

      t.timestamps
    end
  end
end
