require 'rails_helper'

describe  ContainersController, type: :controller do

  describe 'adds routing' do
    it "routes get index" do
      expect(:get => "/containers/").
          to route_to(:controller => "containers", :action => "index")
    end
    it "routes get show" do
      expect(:get => "/containers/bar").
          to route_to(:controller => "containers", :action => "show", :id => "bar")
    end
  end

end

