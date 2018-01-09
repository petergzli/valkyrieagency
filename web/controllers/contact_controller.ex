defmodule Valkyrieagency.ContactController do
  use Valkyrieagency.Web, :controller

  def post_email(conn, %{"data" => email_params}) do
    Valkyrieagency.Onboarding.Email.send_request_ping(email_params["email"], email_params["name"], email_params["phone"])
    conn
        |> put_status(:created)
        |> render("show.json")
  end
end
