require 'csv'
desc "Import Names from IMDB Data dump into our PG"
namespace :import do
  task names: :environment do
    filename = 'imports/namesab.tsv'
    counter = 0
    CSV.foreach(filename, headers: true, col_sep: "\t") do |row|
      artist = Artist.new
      artist.nconst = row['nconst']
      artist.birth_year = row['birthYear']
      artist.death_year = row['deathYear']
      artist.full_name = row['primaryName']
      artist.primary_profession = row['primaryProfession']
      artist.known_for_titles = row['knownForTitles']
      artist.save!
      counter += 1
      print "\nSaved artist record #{counter} -> #{artist.full_name}"
    end
  end
end