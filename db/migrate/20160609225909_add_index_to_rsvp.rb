class AddIndexToRsvp < ActiveRecord::Migration
  def change
    add_index :rsvps, :user_id
  end
end
