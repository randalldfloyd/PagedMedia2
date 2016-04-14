require 'rails_helper'

describe PagedMedia do

  let(:pagedmedia) {FactoryGirl.create :paged_media}

  it "should be saved to Fedora" do
     # This will attempt to use Fedora and will fail if not available during tests
    expect(pagedmedia.save).to be true
  end

end
