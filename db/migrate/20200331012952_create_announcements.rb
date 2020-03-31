class CreateAnnouncements < ActiveRecord::Migration[6.0]
  def change
    create_table :announcements do |t|
      t.string :name
      t.datetime :year
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
