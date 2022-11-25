require 'rails_helper'

RSpec.describe 'Recommendモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:user) { create(:user) }
    let!(:recommend) { build(:recommend, user_id: user.id) }

    context 'recommend_shop_nameカラム' do
      it '空欄でないこと' do
        recommend.recommend_shop_name = ''
        expect(recommend.valid?).to eq false;
      end
    end
    context 'recommend_shop_profileカラム' do
      it '空欄でないこと' do
        recommend.recommend_shop_profile = ''
        expect(recommend.valid?).to eq false;
      end
      it '200文字以下であること' do
        recommend.recommend_shop_profile = Faker::Lorem.characters(number:201)
        expect(recommend.valid?).to eq false;
      end
    end
    context 'recommend_shop_addressカラム' do
      it '空欄でないこと' do
        recommend.recommend_shop_address = ''
        expect(recommend.valid?).to eq false;
      end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Recommend.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
    context 'Stationモデルとの関係' do
      it 'N:1となっている' do
        expect(Recommend.reflect_on_association(:station).macro).to eq :belongs_to
      end
    end
    context 'Genreモデルとの関係' do
      it 'N:1となっている' do
        expect(Recommend.reflect_on_association(:genre).macro).to eq :belongs_to
      end
    end
  end
end
