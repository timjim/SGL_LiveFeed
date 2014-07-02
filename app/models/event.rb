class Event < ActiveRecord::Base
  attr_accessible :company, :company_image_url, :start_time, :end_time, :guest, :guest_bio, :guest_image_url, :host, :host_bio, :host_image_url, :location, :slido_url, :youtube_url, :eventbrite_url

  scope :next_deadline, Proc.new { |after = DateTime.now, limit = 1| where('end_time > ?', after).order("end_time ASC").limit(limit) }
end
