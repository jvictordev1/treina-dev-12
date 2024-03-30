class AddStatusColumnToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :status, :integer, default: 2
  end
end
