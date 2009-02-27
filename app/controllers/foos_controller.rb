class FoosController < ApplicationController
  def create
    p = Person.create! params[:person]
    render :text => "hello #{p.full_name}"
  end

  def new
    @person = Person.new
  end
end
