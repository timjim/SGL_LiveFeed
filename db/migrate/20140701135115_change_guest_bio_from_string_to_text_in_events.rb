class ChangeGuestBioFromStringToTextInEvents < ActiveRecord::Migration
  def change
    change_column :events, :guest_bio, :text
  end
end
