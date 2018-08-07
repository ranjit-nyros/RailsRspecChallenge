require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Begin Time", with: @event.begin_time
    fill_in "Chief Guest", with: @event.chief_guest
    fill_in "Contact Email", with: @event.contact_email
    fill_in "Contact Person", with: @event.contact_person
    fill_in "Description", with: @event.description
    fill_in "End Date", with: @event.end_date
    fill_in "End Time", with: @event.end_time
    fill_in "Entry Type", with: @event.entry_type
    fill_in "Event Category", with: @event.event_category
    fill_in "Hosted By", with: @event.hosted_by
    fill_in "Location", with: @event.location
    fill_in "Mobile Number", with: @event.mobile_number
    fill_in "Start Date", with: @event.start_date
    fill_in "Status", with: @event.status
    fill_in "Title", with: @event.title
    fill_in "User", with: @event.user_id
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Begin Time", with: @event.begin_time
    fill_in "Chief Guest", with: @event.chief_guest
    fill_in "Contact Email", with: @event.contact_email
    fill_in "Contact Person", with: @event.contact_person
    fill_in "Description", with: @event.description
    fill_in "End Date", with: @event.end_date
    fill_in "End Time", with: @event.end_time
    fill_in "Entry Type", with: @event.entry_type
    fill_in "Event Category", with: @event.event_category
    fill_in "Hosted By", with: @event.hosted_by
    fill_in "Location", with: @event.location
    fill_in "Mobile Number", with: @event.mobile_number
    fill_in "Start Date", with: @event.start_date
    fill_in "Status", with: @event.status
    fill_in "Title", with: @event.title
    fill_in "User", with: @event.user_id
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
