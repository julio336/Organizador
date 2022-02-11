# == Schema Information
#
# Table name: participants
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  task_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  role       :integer
#
class Participant < ApplicationRecord
  enum role: { responsible: 1, follower: 2 }

  belongs_to :user
  belongs_to :task
end
