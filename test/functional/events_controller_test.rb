require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { company: @event.company, company_image_url: @event.company_image_url, eventbrite_url: @event.eventbrite_url, guest: @event.guest, guest_bio: @event.guest_bio, guest_image_url: @event.guest_image_url, host: @event.host, host_image_url: @event.host_image_url, location: @event.location, slido_url: @event.slido_url, when: @event.when, youtube_url: @event.youtube_url }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { company: @event.company, company_image_url: @event.company_image_url, eventbrite_url: @event.eventbrite_url, guest: @event.guest, guest_bio: @event.guest_bio, guest_image_url: @event.guest_image_url, host: @event.host, host_image_url: @event.host_image_url, location: @event.location, slido_url: @event.slido_url, when: @event.when, youtube_url: @event.youtube_url }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
