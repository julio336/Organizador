# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  url         :text
#
class Category < ApplicationRecord
    has_many :tasks
    validates :name, :description, presence: true
    
    validates :name, uniqueness: {case_insensitive: false}

end
