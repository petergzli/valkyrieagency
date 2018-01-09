defmodule Valkyrieagency.ContactView do
  use Valkyrieagency.Web, :view

  def render("show.json",  _anything) do
    %{message: "Successfully added email." }
  end
end