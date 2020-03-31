class CreateEducationLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :education_levels do |t|
      t.string :name
      t.string :order_number

      t.timestamps
    end
  end
end
