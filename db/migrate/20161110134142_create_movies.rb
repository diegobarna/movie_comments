class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.string :year
      t.text :synopsis

      t.timestamps
    end
  end
end
