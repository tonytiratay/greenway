class AddLatitudeAndLongitudeToActivite < ActiveRecord::Migration
  def change
    add_column :activites, :latitude, :float
    add_column :activites, :longitude, :float
  end
end
