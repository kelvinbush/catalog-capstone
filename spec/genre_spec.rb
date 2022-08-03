# frozen_string_literal: true

require 'spec_helper'

describe Genre do
  context 'Genre class' do
    before :each do
      @music_album1 = MusicAlbum.new('2020-03-02', 'Afro Beat', on_spotify: true)
      @genre = Genre.new('Disco')
      @genre.add_item(@music_album1)
    end
    it 'should display genre name: ' do
      expect(@genre.name).to eq 'Disco'
    end
    it 'should add new item ' do
      expect(@genre.items).to include(@music_album1)
    end
  end
end
