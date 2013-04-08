class AddLocationToImage < ActiveRecord::Migration
  def change
    add_column :pins, :img_loc_lat, :decimal
    add_column :pins, :img_loc_lng, :decimal
  end
end
