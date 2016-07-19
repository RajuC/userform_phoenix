defmodule UserForm.Router do
  use UserForm.Web, :router

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

  scope "/", UserForm do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/getusers", UserController, :index
    get "/getuser/:id", UserController, :show
    resources "/postuser" , UserController, only: [:index, :show, :new, :create]
  end

  # Other scopes may use custom stacks.
  # scope "/api", UserForm do
  #   pipe_through :api
  # end
end
