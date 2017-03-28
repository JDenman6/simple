class PagesController < ApplicationController
  def main
    flash[:notice] = "This is my test notice!"
  end
end
