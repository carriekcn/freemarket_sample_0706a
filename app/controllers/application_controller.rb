class ApplicationController < ActionController::Base
  def test
    render html: "Hello, world"
  end
end
