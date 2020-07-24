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
require 'test_helper'

class ReminderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
