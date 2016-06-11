module Api
  module V1
    class MoviesController < ApplicationController
      def index
        @movies = Movie.all

        respond_with(@movies)
      end
    end
  end
end
