class CreateA4ntAnnouncements < ActiveRecord::Migration
  def change
    create_table :a4nt_announcements do |t|
      t.string :title
      t.string :body
      t.datetime :start_time
      t.datetime :end_time
      t.integer :position

      t.timestamps
    end
  end
end
