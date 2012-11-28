# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  uid        :string(255)
#  nickname   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  api_key    :string(255)
#

class User < ActiveRecord::Base
  has_many :todos, dependent: :destroy

  before_create :generate_api_key

  private

  def generate_api_key  
    self.api_key = SecureRandom.uuid[0..7]
  end
end
