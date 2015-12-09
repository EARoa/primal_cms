class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :thumbnail
      t.string :videourl
      t.string :category
      t.text :description

      t.timestamps null: false
    end
  end
end
