require 'spec_helper'

describe Album do
  context 'Album class' do
    before :each do
      @music_album1 = MusicAlbum.new('2020-03-02', 'Afro Beat', nil, true)
    end
    it 'should display Music Album published date: ' do
      expect(@music_album1.published_date).to eq '2020-03-02'
    end
    it 'should display Music Album name' do
      expect(@music_album1.name).to eq 'Afro Beat: '
    end
    it 'should display if Music Album is on Spotify: ' do
        expect(@music_album1.can_be_archived?).not_to eq false
    end
  end
end