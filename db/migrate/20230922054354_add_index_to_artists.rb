class AddIndexToArtists < ActiveRecord::Migration[7.0]
  def change
    add_index :artists, :nconst
  end
end
