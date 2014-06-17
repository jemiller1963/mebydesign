class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event
      t.text :description
      t.string :link
      t.datetime :sdate
      t.datetime :edate

      t.timestamps
    end
  end
end
