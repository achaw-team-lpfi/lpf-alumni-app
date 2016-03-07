require 'rails_helper'

RSpec.describe Profile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with a firstname and lastname" do
    profile = Profile.new(firstname: "alex", lastname: "trebek")
    expect(profile).to be_valid
  end
    it "returns a fullname" do
    profile = Profile.new(firstname: "alex", lastname: "trebek", middlename: "danger")
    expect(profile.fullname).to eq 'alex danger trebek'
  end
    it "returns name in the following format: lastname, firstname middlename" do
    profile = Profile.new(firstname: "alex", lastname: "trebek", middlename: "danger")
    expect(profile.name_format).to eq 'trebek, alex danger'
  end
end
