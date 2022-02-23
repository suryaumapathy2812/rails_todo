class DemoController < ApplicationController
  def index
    render("demo/index")
  end

  def home
    @array = [1, 2, 3, 4, 5]
    @id = params[:id].to_i
    @page = params["page"].to_i
    render("demo/home")
  end

  def re_direct
    # redirect_to(:controller => "demo", :action => "home")
    redirect_to(action: "home")
  end

  def surya_umapathy
    redirect_to("https://suryaumapathy.in/")
  end
end
