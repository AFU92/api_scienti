class CreateAnnouncementResearchers < ActiveRecord::Migration[6.0]
  def change
    create_table :announcement_researchers do |t|
      t.references :announcement, foreign_key: true
      t.references :researcher, foreign_key: true

      t.timestamps
    end
  end
end
