class AppleController < ApplicationController
    def get_itunes_app_form

    render("get_itunes_app_form.html.erb")
  end

  def get_itunes_app
    @app_type = params[:app_type]
    @app_term = params[:app_term].downcase

   # entity= software, iPadSoftware, macSoftware [iPhone, iPad, Mac]
   # In first draft, we're just going to look at iPhone and iPad apps


    if @app_type[0..2] = "iPh"
      @app_type_code="iPadSoftware"
    else
      @app_type_code="software"
    end

    itunes_app_url = "http://itunes.apple.com/search?country=US&term=" + @app_term + "&media=software&entity=" + @app_type_code + "&limit=20"
    itunes_app_raw = open(itunes_app_url).read
    itunes_app_parsed = JSON.parse(itunes_app_raw)

    @app_count = itunes_app_parsed["resultCount"]
    @app_results = itunes_app_parsed["results"]


    render("get_itunes_app.html.erb")
  end
end
