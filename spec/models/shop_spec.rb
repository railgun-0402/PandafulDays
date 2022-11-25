require 'rails_helper'

RSpec.describe 'Shopモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:shop) { create(:shop) }

    context 'shop_nameカラム' do
      it '空欄でないこと' do
        shop.shop_name = ''
        expect(shop.valid?).to eq false;
      end
    end
    context 'shop_profileカラム' do
      it '空欄でないこと' do
        shop.shop_profile = ''
        expect(shop.valid?).to eq false;
      end
      it '200文字以下であること' do
        shop.shop_profile = Faker::Lorem.characters(number:201)
        expect(shop.valid?).to eq false;
      end
    end
    context 'shop_addressカラム' do
      it '空欄でないこと' do
        shop.shop_address = ''
        expect(shop.valid?).to eq false;
      end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Genreモデルとの関係' do
      it 'N:1となっている' do
        expect(Shop.reflect_on_association(:genre).macro).to eq :belongs_to
      end
    end
    context 'Stationモデルとの関係' do
      it 'N:1となっている' do
        expect(Shop.reflect_on_association(:station).macro).to eq :belongs_to
      end
    end
    context 'Genreモデルとの関係' do
      it 'N:1となっている' do
        expect(Shop.reflect_on_association(:genre).macro).to eq :belongs_to
      end
    end
    context 'Shop_commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(Shop.reflect_on_association(:shop_comments).macro).to eq :has_many
      end
    end
    context 'Shop_imageモデルとの関係' do
      it '1:Nとなっている' do
        expect(Shop.reflect_on_association(:shop_images).macro).to eq :has_many
      end
    end
    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(Shop.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
  end
end