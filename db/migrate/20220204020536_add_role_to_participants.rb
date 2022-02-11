class AddRoleToParticipants < ActiveRecord::Migration[6.1]
  def change
    add_column :participants, :role, :integer
  end
end
