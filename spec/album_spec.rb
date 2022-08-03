# frozen_string_literal: true

require 'spec_helper'

describe MusicAlbum do
  context 'MusicAlbum class' do
    before :each do
      @music_album1 = MusicAlbum.new('2020-03-02', 'Afro Beat', on_spotify: true)
    end
    it 'should be an instance of Music Album class: ' do
      expect(@music_album1).to be_instance_of MusicAlbum
    end
    it 'should display correct name' do
      expect(@music_album1.name).to eq 'Afro Beat'
    end
    it 'should not archive if not older than 10 years' do
      expect(@music_album1.can_be_archived?).to eq false
    end
  end
end
