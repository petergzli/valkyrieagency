defmodule Valkyrieagency.Router do
  use Valkyrieagency.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Valkyrieagency do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    post "/contact",ContactController, :post_email
  end

  # Other scopes may use custom stacks.
  # scope "/api", Valkyrieagency do
  #   pipe_through :api
  # end
end
