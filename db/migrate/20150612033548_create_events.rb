class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :when
      t.string :event_type
      t.timestamps null: false
    end
  end
end
