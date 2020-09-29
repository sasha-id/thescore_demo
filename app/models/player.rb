# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team

  scope :search_by_name, ->(name) { where('similarity(name, ?) > 0.7', name).order("similarity(name, #{ActiveRecord::Base.connection.quote(name)}) DESC") }
end
