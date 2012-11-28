# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  completed  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Todo < ActiveRecord::Base
  attr_accessible :completed, :title

  belongs_to :user

  def complete
    self.completed = true
    save
  end
end
