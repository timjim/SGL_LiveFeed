class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :guest
      t.string :company
      t.string :guest_bio
      t.string :guest_image_url
      t.string :company_image_url
      t.string :host
      t.string :host_image_url
      t.datetime :when
      t.string :location
      t.string :youtube_url
      t.string :slido_url
      t.string :eventbrite_url

      t.timestamps
    end
  end
end
