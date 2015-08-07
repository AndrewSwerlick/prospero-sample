class AddAttendeesField < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.string, :attendees array: true
    end
  end
end
