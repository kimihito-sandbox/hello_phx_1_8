defmodule HelloPhx18Web.HelloController do
  use HelloPhx18Web, :controller

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger} = params) do
    render(conn, :show, messenger: messenger)
  end
end
