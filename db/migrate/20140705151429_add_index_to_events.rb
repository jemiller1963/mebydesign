class AddIndexToEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.text :description
      t.string :link
      t.datetime :sdate
      t.datetime :edate

      t.timestamps
    end
    add_index :events, [:sdate, :edate]
  end
end
