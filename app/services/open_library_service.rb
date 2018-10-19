class OpenLibraryService
  def book_info(param)
    response = HTTParty.get(
      "#{Rails.application.secrets[:url_ext_api]}/books"\
      "?bibkeys=ISBN:#{param}&format=json&jscmd=data"
    )
    ParsedResponse.new(param, response.parsed_response)
  end

end
