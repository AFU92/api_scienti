class CreateClassifications < ActiveRecord::Migration[6.0]
  def change
    create_table :classifications do |t|
      t.string :alphanumeric_id
      t.string :name
      t.integer :order_number

      t.timestamps
    end
  end
end
