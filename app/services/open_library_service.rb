
class OpenLibraryService
  def initialize()
  end

  def book_info(param)
    isbn = param
    response = HTTParty.get("https://openlibrary.org/api/books?bibkeys=ISBN:#{isbn}&format=json&jscmd=data")
    parsed = response.parsed_response
    parsed_r = ParsedResponse.new(isbn,parsed)
    parsed_r
  end

end

class ParsedResponse
  def initialize(isbn,parsed)
  @isbn = isbn
  @title = generate_title(parsed)
  @subtitle = generate_subtitle(parsed)
  
  end

  def generate_title(parsed)
    parsed["ISBN:#{@isbn}"]["title"]
  end

  def generate_subtitle(parsed)
    parsed["ISBN:#{@isbn}"]["subtitle"]
  end
end