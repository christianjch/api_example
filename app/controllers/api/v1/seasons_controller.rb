module Api
  module V1
    class SeasonsController < ApplicationController
      include ActsAsCacheable

      def index
        Rails.cache.fetch(cache_key) do
          @seasons = Season.includes(:episodes).order(:id).order("episodes.number")
        end

        respond_with(@seasons)
      end
    end
  end
end
