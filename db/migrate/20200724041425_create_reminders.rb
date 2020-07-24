class CreateReminders < ActiveRecord::Migration[6.0]
  def change
    create_table :reminders do |t|
      t.string   :title
      t.text     :description
      t.boolean  :completed
      t.datetime :completed_at
      t.integer  :user_id

      t.timestamps
    end

    add_foreign_key :reminders, :users
  end
end
