class CreateDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :nationality
      t.date :born_in
      t.references :favorite_genre, null: false, foreign_key: true, default: 0

      t.timestamps
    end
  end
end
