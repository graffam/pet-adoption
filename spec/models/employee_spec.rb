require 'rails_helper'

RSpec.describe Employee, :type => :model do
  let(:blank_values) { [nil, ""] }
  it { should have_valid(:name).when("name") }
  it { should_not have_valid(:name).when(*blank_values) }
  it { should have_valid(:email).when("email") }
  it { should_not have_valid(:email).when(*blank_values) }
end
