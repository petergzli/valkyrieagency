defmodule Valkyrieagency.Mailer do
  use Bamboo.Mailer, otp_app: :valkyrieagency
end

defmodule Valkyrieagency.Onboarding.Email do
  import Bamboo.Email
  import Bamboo.MandrillHelper

  def send_request_ping(email, name, phone) do
    new_email()
    |> template("valkyrie")
    |> to(["petergzli@gmail.com", "max.n.fischer@gmail.com"])
    |> from("ideas@belinkedapp.com")
    |> subject(Enum.join(["New Valkyrie Lead for", name], " "))
    |> put_param("global_merge_vars", [
      %{
        "name": "email",
        "content": email
      }, %{
        "name": "PHONE",
        "content": phone
      }, %{
        "name": "FNAME",
        "content": name
      }
    ])
    |> Valkyrieagency.Mailer.deliver_later
  end
end