require 'rails_helper'

describe "Nasa Service Model" do
  it "exists" do
    nasa = NasaService.new

    expect(nasa).to be_a(NasaService)
  end

  context 'instance methods' do
    context '#daily_apod' do
      xit 'returns info from pic of the day' do
        VCR.use_cassette("nasa_apod_service") do
          nasa = NasaService.new.daily_apod

          expect(nasa).to be_a(Hash)
          expect(nasa).to have_key(:date)
          expect(nasa).to have_key(:explanation)
          expect(nasa).to have_key(:title)
          expect(nasa).to have_key(:url)
          expect(nasa).to have_key(:media_type)
        end
      end
    end

    context '#nasa_notifications' do
      xit 'returns info from pic of the day' do
        VCR.use_cassette("nasa_notifications") do
          notification = NasaService.new.nasa_notifications

          expect(notification).to be_a(Hash)
          expect(notification).to have_key(:messageType)
          expect(notification).to have_key(:messageID)
          expect(notification).to have_key(:messageURL)
          expect(notification).to have_key(:messageIssueTime)
          expect(notification).to have_key(:messageBody)
        end
      end
    end

    context '#rover_photos' do
      xit 'returns info from mars rovers' do
        VCR.use_cassette("rover_photos") do
          rover = NasaService.new.rover_photos

          expect(rover).to be_a(Hash)
          expect(rover[:camera]).to have_key(:name)
          expect(rover[:camera]).to have_key(:rover_id)
          expect(rover[:camera]).to have_key(:full_name)
          expect(rover[:img_src]).to be_a(String)
          expect(rover[:rover]).to have_key(:name)
          expect(rover[:rover]).to have_key(:landing_date)
          expect(rover[:rover]).to have_key(:launch_date)
          expect(rover[:rover]).to have_key(:total_photos)
        end
      end
    end
  end

end
