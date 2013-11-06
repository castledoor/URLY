require 'spec_helper'

describe Visit do
  it { should belong_to :url }

  it "shows you how many visits a url has had" do
    url = Url.new(:original_url => "http://www.epicodus.com")
    url.save
    url.visits.create
    url.visits.create
    url.visits.count.should eq 2
  end
end
