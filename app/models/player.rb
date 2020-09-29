# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team

  scope :search_by_name, ->(name) { where('similarity(name, ?) > 0.7', name).order("similarity(name, #{ActiveRecord::Base.connection.quote(name)}) DESC") }

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
end
