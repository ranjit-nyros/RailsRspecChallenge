require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { begin_time: @event.begin_time, chief_guest: @event.chief_guest, contact_email: @event.contact_email, contact_person: @event.contact_person, description: @event.description, end_date: @event.end_date, end_time: @event.end_time, entry_type: @event.entry_type, event_category: @event.event_category, hosted_by: @event.hosted_by, location: @event.location, mobile_number: @event.mobile_number, start_date: @event.start_date, status: @event.status, title: @event.title, user_id: @event.user_id } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { begin_time: @event.begin_time, chief_guest: @event.chief_guest, contact_email: @event.contact_email, contact_person: @event.contact_person, description: @event.description, end_date: @event.end_date, end_time: @event.end_time, entry_type: @event.entry_type, event_category: @event.event_category, hosted_by: @event.hosted_by, location: @event.location, mobile_number: @event.mobile_number, start_date: @event.start_date, status: @event.status, title: @event.title, user_id: @event.user_id } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
