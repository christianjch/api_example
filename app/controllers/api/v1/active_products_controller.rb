module Api
  module V1
    class ActiveProductsController < ApplicationController
      before_action :set_resources
      before_action :disable_outdated_content, only: :index

      def index
        @products = @user.alive_products

        respond_with(@products)
      end

      private

      def set_resources
        @user = User.find_by(id: params[:user_id])
      end

      def disable_outdated_content
        @user.purchases.alive.where("created_at < ?", Time.now - 2.days)
          .update_all(active: false)
      end
    end
  end
end
