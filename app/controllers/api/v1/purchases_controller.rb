module Api
  module V1
    class PurchasesController < ApplicationController
      before_action :set_resources

      def create
        @purchase = Purchase.new(user: @user, product: @product, quality: params[:quality],
                                 price: Purchase::PRICE, active: true)

        if @purchase.save
          render json: { stauts: :created }
        else
          render json: { status: :unprocessable_entity, message: @purchase.errors.messages }
        end
      end

      private

      def set_resources
        @user = User.find_by(id: params[:user_id])
        @product = Product.find_by(id: params[:product])
      end
    end
  end
end
