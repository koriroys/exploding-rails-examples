module RomExtras
  extend ActiveSupport::Concern

  included do
    extend ActiveModel::Naming
    include ActiveModel::Conversion

    self.transform_types { |type| type.omittable }
  end

  def persisted?
    respond_to?(:id) && id.present?
  end
end