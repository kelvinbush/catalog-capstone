require 'json'
require 'fileutils'
require_relative '../lib/label'
​
class GameController
  def initialize
    @games_path = 'files/games.json'
    File.write(@games_path, []) unless File.exist?(@games_path)
  end
​
  def load_games
    loaded_games = []
    games = JSON.parse(File.read(@games_path))
    games.each do |game|
      loaded_games << Game.new(game['date'], game['multiplayer'], game['last_played_at'])
    end
    loaded_games
  end
​
  def save_labels(games)
    saved_games = []
    games.each do |game|
      saved_games << {
        date: game.date,
        multiplayer: game.multiplayer,
        last_played_at: game.last_played_at,
      }
    end
    File.write(@games_path, JSON.generate(saved_games))
  end
end