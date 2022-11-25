require 'rails_helper'

RSpec.describe 'Shop_imageモデルのテスト', type: :model do

  describe 'アソシエーションのテスト' do
    context 'Shopモデルとの関係' do
      it 'N:1となっている' do
        expect(ShopImage.reflect_on_association(:shop).macro).to eq :belongs_to
    end
   end
  end
end