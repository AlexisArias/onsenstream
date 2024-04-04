class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :director
      t.integer :year
      t.text :description
      t.string :casting
      t.string :duration
      t.string :trailer
      t.string :image
      t.string :plateform

      t.timestamps
    end
  end
end
