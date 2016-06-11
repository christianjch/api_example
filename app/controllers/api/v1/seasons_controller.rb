module Api
  module V1
    class SeasonsController < ApplicationController
      def index
        @seasons = Season.all

        respond_with(@seasons)
      end
    end
  end
end
