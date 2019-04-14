class AddUserToNasaPics < ActiveRecord::Migration[5.2]
  def change
    add_reference :nasa_pics, :user, foreign_key: true
  end
end
