require "open-uri"

class FlatsController < ActionController::Base
  def index
    get_flats
    raise
  end
  def show
    get_flats
    @the_flat = @flat.find{|flat| flat["id"] == params[:id].to_i}
    raise
  end

  private
  def get_flats
      url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

end
