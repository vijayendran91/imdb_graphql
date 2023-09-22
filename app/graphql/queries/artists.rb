module Queries::Artists
  include Types::BaseInterface
  include GraphQL::Types::Relay::HasNodeField
  include GraphQL::Types::Relay::HasNodesField

  graphql_name 'ArtistsQueries'
  field :artists, Types::Objects::Artist.collection_type, description: 'Artist Details', null: true do
    argument :page, Integer, required: false
    argument :limit, Integer, required: false, default_value: 2
  end

  def artists(limit:, page: nil)
    ::Artist.page(page).per(limit)
  end
end
