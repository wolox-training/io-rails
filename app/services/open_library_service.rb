class OpenLibraryService
  def book_info(param)
    response = HTTParty.get("#{Rails.application.secrets[:url_ap]}#{param}&format=json&jscmd=data")
    ParsedResponse.new(param, response.parsed_response).as_json
  end
end
