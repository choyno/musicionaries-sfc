class PagesController < ApplicationController
  def index
    @songs = Song.all.limit(10)
    @clps = Clp.all.limit(3)
  end
  
  def songs
  end
end
