class CreateA4ntAnnouncements < ActiveRecord::Migration
  def change
    create_table :a4nt_announcements do |t|
      t.string :title,          null: false,    default: ''
      t.string :body,           null: false,    default: ''
      t.datetime :start_time,   null: false
      t.datetime :end_time,     null: false
      t.integer :position,      null: false
      t.string :target,         null: false,    default: 'all'

      t.timestamps
    end
  end
end
