defmodule UserForm.PageController do
  use UserForm.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
