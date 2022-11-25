require 'rails_helper'

RSpec.describe 'Shop_commentモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:user) { create(:user) }
    let(:shop) { create(:shop) }
    let!(:shop_comment) { build(:shop_comment, user_id: user.id, shop_id: shop.id ) }

    context 'shop_commentカラム' do
      it '200文字以下であること' do
        shop_comment.comment = Faker::Lorem.characters(number:201)
        expect(shop_comment.valid?).to eq false;
      end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Shopモデルとの関係' do
      it 'N:1となっている' do
        expect(ShopComment.reflect_on_association(:shop).macro).to eq :belongs_to
      end
    end
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(ShopComment.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  end
end