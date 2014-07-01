class Event < ActiveRecord::Base
  attr_accessible :company, :company_image_url, :eventbrite_url, :guest, :guest_bio, :guest_image_url, :host, :host_image_url, :location, :slido_url, :start_time, :end_time,  :youtube_url

  scope :future, lambda { where('end_time > ?', Time.zone.now) }
  scope :up_to, lambda { |time| where('start_time < ?', time) }
end
