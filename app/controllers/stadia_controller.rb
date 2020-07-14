class StadiaController < ApplicationController
  def index
    Stadium.limit(5)
  end
end
