module Api
  module V1
    class MoviesController < ApplicationController
      include ActsAsCacheable

      def index
        Rails.cache.fetch(cache_key) do
          @movies = Movie.all
        end

        respond_with(@movies)
      end
    end
  end
end
