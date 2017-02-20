require "rails_helper"

RSpec.describe ColumnFix4sController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/column_fix4s").to route_to("column_fix4s#index")
    end

    it "routes to #new" do
      expect(:get => "/column_fix4s/new").to route_to("column_fix4s#new")
    end

    it "routes to #show" do
      expect(:get => "/column_fix4s/1").to route_to("column_fix4s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/column_fix4s/1/edit").to route_to("column_fix4s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/column_fix4s").to route_to("column_fix4s#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/column_fix4s/1").to route_to("column_fix4s#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/column_fix4s/1").to route_to("column_fix4s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/column_fix4s/1").to route_to("column_fix4s#destroy", :id => "1")
    end

  end
end
