require 'rails_helper'

RSpec.describe Animal, :type => :model do
  let(:blank_values) { [nil, ""] }
  it { should have_valid(:name).when("name")}
  it { should_not have_valid(:name).when(*blank_values)}
  it { should have_valid(:age).when("age")}
  it { should_not have_valid(:age).when(*blank_values)}
  it { should have_valid(:breed).when("breed")}
  it { should_not have_valid(:breed).when(*blank_values)}
  it { should have_valid(:color).when("color")}
  it { should_not have_valid(:color).when(*blank_values)}
end
