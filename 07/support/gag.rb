class Gag
  
  attr_reader :title, :points, :comment_count, :image_url

  def initialize(title, points,comment_count, image_url)
    @title = title
    @points = points
    @comment_count = comment_count
    @image_url = image_url
  end

end