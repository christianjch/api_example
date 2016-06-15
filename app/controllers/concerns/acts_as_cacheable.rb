require "active_support/concern"

module ActsAsCacheable
  extend ActiveSupport::Concern
  def cache_key
    model = controller_name.classify
    count = model.constantize.count
    last_updated_at = model.constantize.maximum(:updated_at).try(:to_i)
    "#{model.pluralize}/#{count}-#{last_updated_at}"
  end
end
