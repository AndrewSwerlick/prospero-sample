class AddDurationColumn < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.column :duration, :interval
    end
  end
end
