defmodule HelloPhx18Web.ErrorHTMLTest do
  use HelloPhx18Web.ConnCase, async: true

  # Bring render_to_string/4 for testing custom views
  import Phoenix.Template, only: [render_to_string: 4]

  test "renders 404.html" do
    assert render_to_string(HelloPhx18Web.ErrorHTML, "404", "html", []) == "Not Found"
  end

  test "renders 500.html" do
    assert render_to_string(HelloPhx18Web.ErrorHTML, "500", "html", []) == "Internal Server Error"
  end
end
