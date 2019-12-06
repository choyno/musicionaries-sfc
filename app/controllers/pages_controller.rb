class PagesController < ApplicationController
  def index
    @songs = Song.all.limit(10)
  end
  
  def songs
  end
end
