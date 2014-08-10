class CreateBorgCubes < ActiveRecord::Migration
  def change
    create_table :borg_cubes do |t|
      t.string :name
      t.integer :hp
      t.integer :x
      t.integer :y
      t.integer :sleeping_borg
      t.integer :waking_borg

      t.timestamps
    end
  end
end
