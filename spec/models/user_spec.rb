require 'spec_helper'

describe User do
  it { should have_secure_password }
  it { should have_many(:urls) }

  it do
    User.create(:password => 'whatever', :password_confirmation => 'whatever')
    should validate_uniqueness_of(:email)
    # special test bc shoulda matchers is checking for uniqeness of email but unable to bypass secure password requirement.
  end
end
