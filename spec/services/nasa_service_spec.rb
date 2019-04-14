require 'rails_helper'

describe "Nasa Service Model" do
  it "exists" do
    nasa = NasaService.new("something")

    expect(nasa).to be_a(NasaService)
  end
end
