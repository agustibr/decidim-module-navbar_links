# frozen_string_literal: true

require "decidim/core/test/factories"

FactoryBot.define do
  factory :navbar_links_component, parent: :component do
    name { Decidim::Components::Namer.new(participatory_space.organization.available_locales, :navbar_links).i18n_name }
    manifest_name :navbar_links
    participatory_space { create(:participatory_process, :with_steps) }
  end

  # Add engine factories here
end
