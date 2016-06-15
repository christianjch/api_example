module Api
  module V1
    class ProductsController < ApplicationController
      include ActsAsCacheable

      def index
        Rails.cache.fetch(cache_key) do
          @products = Product.all
        end

        respond_with(@products)
      end
    end
  end
end
