defmodule HelloPhx18.Plugs.Locale do
  @moduledoc """
  A plug to set the locale based on the request.
  """

  import Plug.Conn

  @locales ["en", "es", "fr"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"locale" => loc}} = conn, _default) when loc in @locales do
    assign(conn, :locale, loc)
  end

  def call(conn, default) do
    assign(conn, :locale, default)
  end
end
