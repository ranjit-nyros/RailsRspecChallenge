class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.time :begin_time
      t.time :end_time
      t.text :location
      t.string :entry_type , default: 'Public'
      t.string :hosted_by
      t.string :contact_person
      t.string :contact_email
      t.string :mobile_number
      t.string :chief_guest
      t.string :status, default: 'Published'
      t.string :event_category
      t.integer :user_id

      t.timestamps
    end
  end
end
