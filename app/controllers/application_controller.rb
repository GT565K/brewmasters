class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :show_survey_alert, only: [:index, :brewery, :team]
  
  def forbid
    respond_to do |format|
      format.html { render :text => "Permission denied", :status => :forbidden }
      format.all  { head :forbidden }
    end
  end
  
  def show_survey_alert
    flash[:notice] = "Help us bring the Personal Brewery to market. Click <a href=\"https://www.surveymonkey.com/s/9M9DZT3\" target=\"_blank\">here</a> to take our survey.".html_safe
  end
  
end
