class Purchase
  @@all = []

  def initialize(painting, gallery)
    @painting = painting
    @gallery = gallery
    @@all << self
  end

end
