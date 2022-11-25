require 'rails_helper'

RSpec.describe 'Genreモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:genre) { create(:genre) }

    context 'genre_nameカラム' do
      it '空欄でないこと' do
        genre.genre_name = ''
        expect(genre.valid?).to eq false;
      end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Shopモデルとの関係' do
      it '1:Nとなっている' do
        expect(Genre.reflect_on_association(:shops).macro).to eq :has_many
      end
    end
    context 'Recommendモデルとの関係' do
      it '1:Nとなっている' do
        expect(Genre.reflect_on_association(:recommends).macro).to eq :has_many
      end
    end
  end
end