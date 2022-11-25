require 'rails_helper'

RSpec.describe 'Stationモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:station) { create(:station) }

    context 'station_nameカラム' do
      it '空欄でないこと' do
        station.station_name = ''
        expect(station.valid?).to eq false;
      end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Shopモデルとの関係' do
      it '1:Nとなっている' do
        expect(Station.reflect_on_association(:shops).macro).to eq :has_many
      end
    end
    context 'Recommendモデルとの関係' do
      it '1:Nとなっている' do
        expect(Station.reflect_on_association(:recommends).macro).to eq :has_many
      end
    end
  end
end
