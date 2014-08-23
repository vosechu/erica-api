class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :photo_url
      t.string :costume
      t.string :chronology
      t.text :notes
      t.references :theme, index: true

      t.timestamps
    end
  end
end
