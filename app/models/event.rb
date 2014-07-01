class Event < ActiveRecord::Base
  attr_accessible :company, :company_image_url, :eventbrite_url, :guest, :guest_bio, :guest_image_url, :host, :host_image_url, :location, :slido_url, :when, :youtube_url
end
