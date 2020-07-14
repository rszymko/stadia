class StadiaController < ApplicationController
  def index
    @stadia = Stadium.order(:name)
  end
end
