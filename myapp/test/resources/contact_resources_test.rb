require 'test_helper'

class ContactResourceTest < ActiveSupport::TestCase
  def test_full_name
    context = {}
    contact_resource = ContactResource.new(Contact.new(name_first: "Joe", name_last: "Smith"), context)
    assert_equal "Joe, Smith", contact_resource.full_name
  end
  def test_first_name_delegates
    context = {}
    contact_resource = ContactResource.new(Contact.new(name_first: "Joe", name_last: "Smith"), context)
    assert_equal "Joe", contact_resource.name_first
  end

  def test_email_not_visible_to_guest
    context = { guest: true }
    contact_resource = ContactResource.new(Contact.new(name_first: "Joe", name_last: "Smith", email: "joe@example.com"), context)
    refute_includes contact_resource.fetchable_fields, :email
  end

#   def test_email_visible_to_non_guests
#     context = { guest: false }
#     contact_resource = ContactResource.new(Contact.new(name_first: "Joe", name_last: "Smith", email: "joe@example.com"), context)
#     assert_includes contact_resource.fetchable_fields, :email
#   end

#   def test_email_not_allowed_for_guests
#     context = { guest: true }
#     contact_resource = ContactResource.new(Contact.new(name_first: "Joe", name_last: "Smith", email: "joe@example.com"), context)
#     refute_includes ContactResource.creatable_fields(context), :email
#     refute_includes ContactResource.updatable_fields(context), :email
#     refute_includes ContactResource.sortable_fields(context), :email
#   end

  def json_response
    JSON.parse(@response.body)
  end

  def test_get_all_contacts
    get :index
    assert_response :success
    assert_equal Contact.count, json_response['data'].size
  end
end