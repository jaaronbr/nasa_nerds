require 'rails_helper'

describe "Nasa Service Model" do
  it "exists" do
    nasa = NasaService.new

    expect(nasa).to be_a(NasaService)
  end

  context 'instance methods' do
    context '#daily_apod' do
      it 'returns info from pic of the day' do
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
      it 'returns info from pic of the day' do
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
  end

end
