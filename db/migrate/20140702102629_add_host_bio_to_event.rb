class AddHostBioToEvent < ActiveRecord::Migration
  def change
    add_column :events, :host_bio, :text
  end
end
