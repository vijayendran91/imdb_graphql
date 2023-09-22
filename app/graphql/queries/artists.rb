module Queries::Artists
  include Types::BaseInterface

  graphql_name 'ArtistsQueries'
  field :artists, [Types::Objects::Artist], description: 'Artist Details', null: true

  def artists
    Artist.first(50)
  end
end