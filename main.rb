require 'pry'
require_relative 'lib/app'

def main
  app = App.new
  app.start
end

main