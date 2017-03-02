class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :img_url
      t.string :video_url
      t.string :description
      t.references :champion, index: true, foreign_key: true
      t.timestamps
  end
end
end
