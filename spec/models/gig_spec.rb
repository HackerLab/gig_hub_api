require 'spec_helper'

describe Gig do
  context 'validations' do
    it {should validate_presence_of(:company)}
    it {should ensure_length_of(:company).is_at_most(20)}
    it {should validate_presence_of(:location)}
    it {should ensure_length_of(:location).is_at_most(20)}
    it {should validate_presence_of(:commitment)}
    it {should ensure_length_of(:commitment).is_at_most(20)}
    it {should validate_presence_of(:name)}
    it {should ensure_length_of(:name).is_at_most(60)}
    it {should validate_presence_of(:description)}
    it {should ensure_length_of(:description).is_at_most(1500)}
    it {should ensure_length_of(:url).is_at_most(255)}
  end

  context 'mass assignment' do
    it {should allow_mass_assignment_of(:company)}
    it {should allow_mass_assignment_of(:location)}
    it {should allow_mass_assignment_of(:commitment)}
    it {should allow_mass_assignment_of(:name)}
    it {should allow_mass_assignment_of(:description)}
    it {should allow_mass_assignment_of(:url)}
  end
end
