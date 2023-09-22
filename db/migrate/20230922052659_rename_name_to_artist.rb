class RenameNameToArtist < ActiveRecord::Migration[7.0]
  def change
    rename_table :names, :artists
  end
end
