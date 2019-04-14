class CreateNasaPics < ActiveRecord::Migration[5.2]
  def change
    create_table :nasa_pics do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :date_taken

      t.timestamps
    end
  end
end
