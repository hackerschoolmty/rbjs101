class GagDigestor

  attr_reader :dom

  def initialize(dom)
    @dom = dom
  end

  # Returns the gag in the format of:
  # [title, points, comment_count, image_url]
  def to_a
    [
      dom.css('.badge-item-title').text.strip,
      text_to_i(dom.css('.badge-item-love-count').text),
      text_to_i(dom.css('.comment').text),
      dom.css('.badge-item-img').first && dom.css('.badge-item-img').first['src']
    ]
  end

  def to_gag
    Gag.new(*to_a)
  end

  private

  def text_to_i(text)
    text.delete(',').to_i
  end

end
