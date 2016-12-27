class Event < ActiveRecord::Base
  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    [house_number, address1, state_abbreviation, "USA"].compact.join(', ')
  end
end
