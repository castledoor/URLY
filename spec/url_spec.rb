require 'spec_helper'

describe Url do
  it "should have an original URL" do
    url = Url.new(:original_url => "http://www.learnhowtoprogram.com/lessons/active-record-validations-and-callbacks")
    url.original_url.should eq "http://www.learnhowtoprogram.com/lessons/active-record-validations-and-callbacks"
  end

  it "should convert a URL into a shorted version" do
    url = Url.create(:original_url => "http://www.learnhowtoprogram.com/lessons/active-record-validations-and-callbacks")
    url.shortened_url.should eq (url.id)
  end

  it { should have_many :visits }
end
