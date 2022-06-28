class CreateSightings < ActiveRecord::Migration[7.0]
  def change
    create_table :sightings do |t|
      t.integer :animal_id
      t.date :date
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
