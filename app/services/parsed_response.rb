class ParsedResponse
  def initialize(isbn, parsed)
    @isbn = isbn
    @title = generate_title(parsed)
    @subtitle = generate_subtitle(parsed)
    @pags = generate_pags(parsed)
    @authors = generate_authors(parsed)
  end

  def generate_title(parsed)
    parsed["ISBN:#{@isbn}"]['title']
  end

  def generate_subtitle(parsed)
    parsed["ISBN:#{@isbn}"]['subtitle']
  end

  def generate_authors(parsed)
    parsed["ISBN:#{@isbn}"]['authors'].map { |author| author['name'] }
  end

  def generate_pags(parsed)
    parsed["ISBN:#{@isbn}"]['number_of_pages']
  end

  def my_json
    { "isbn": @isbn, "title": @title, "subtitle": @subtitle, "pags": @pags, "authors": @authors }
  end
end
