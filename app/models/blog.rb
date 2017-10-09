class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }

  attr_accessor :temporary_slug

  extend FriendlyId
  friendly_id :title, :use => [:slugged, :history]

  def should_generate_new_friendly_id?
    slug.blank? || title_changed? || super
  end

  validates_presence_of :title, :body
  belongs_to :topic




end
