class PurchasesManager

  def initialize(user, product, quality)
    @user, @product, @quality = user, product, @quality
    @errors = ActiveModel::Errors.new(self)
  end

  def purchase!
    return false if purchased?
    Purchase.create(price: Purchase::Price, quality: @quality,
                    active: true, user_id: @user.id,
                    product_id: @product.id)
  end

  private

  def purchased?
    user.alive_products.include?(product)
  end
end
