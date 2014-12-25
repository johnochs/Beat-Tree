class Track
  include Neo4j::ActiveNode
  
  id_property :spot_id, on: :DBID
  
  property :track_spotify_id
  property :track_name
  property :track_number
  property :track_preview_url
  property :track_spotify_uri
  property :track_popularity
  property :track_href
  property :track_external_url
  property :track_duration_ms
  property :artist_name
  property :artist_spotify_id
  property :artist_spotify_href
  property :artist_href
  property :album_name
  property :album_spotify_id
  property :album_spotify_uri
  property :album_l_image
  property :album_m_image
  property :album_s_image
  property :album_href
  
  validates :track_name, :track_spotify_id, presence: true
  
  index :track_spotify_id
  
  has_many :out, :samples, model_class: Track
  has_one :out, :covers, model_class: Track
  has_one :out, :remixes, model_class: Track
  
  
  def DBID
    self.track_spotify_id
  end

end
