# == Schema Information
#
# Table name: reminders
#
#  id           :integer          not null, primary key
#  title        :string
#  description  :text
#  completed    :boolean
#  completed_at :datetime
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Reminder < ApplicationRecord
  belongs_to :user

  validates :title,   presence: true
  validates :user_id, presence: true

  def complete!
    self.completed    = true
    self.completed_at = Time.now

    self.save!
  end

  def uncomplete!
    self.completed    = false
    self.completed_at = nil

    self.save!
  end

  def completed?
    !!(completed)
  end

  def status
    completed? ? 'completed' : 'pending'
  end
end
