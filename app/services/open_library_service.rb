class OpenLibraryService
  def initialize; end

  def book_info(param)
    response = HTTParty.get("https://openlibrary.org/api/books?bibkeys=ISBN:#{param}&format=json&jscmd=data")
    ParsedResponse.new(param, response.parsed_response)
  end
end

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
end
