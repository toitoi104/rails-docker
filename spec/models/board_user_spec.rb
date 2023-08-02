require 'rails_helper'

RSpec.describe BoardUser, type: :model do
  describe '#age' do
    before do
      allow(Time.zone).to receive(:now).and_return(Time.zone.parse('2018/04/01'))
    end

    context '20年前の生年月日の場合' do
      let(:boardUser) { BoardUser.new(birthday:  Time.zone.now - 20.years) }

      it '年齢が20歳であること' do
        expect(boardUser.age).to eq 20
      end
    end

    context '10年まえに生まれた場合でちょうど誕生日の場合' do
      let(:boardUser) { BoardUser.new(birthday:  Time.zone.parse('2008/04/01')) }

      it '年齢が10歳であること' do
        expect(boardUser.age).to eq 10
      end
    end

    context '10年まえに生まれた場合で誕生日がきていない場合' do
      let(:boardUser) { BoardUser.new(birthday:  Time.zone.parse('2008/04/02')) }

      it '年齢が9歳であること' do
        expect(boardUser.age).to eq 9
      end
    end
  end
end
