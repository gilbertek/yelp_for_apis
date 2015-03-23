class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :permalink

      t.timestamps
    end
  end
end
