defmodule UserForm.UserController do
	use UserForm.Web, :controller

	alias UserForm.User    ## modell

#	plug :scrub_params, "post" when action in [:create, :update]

	def new(conn, _params) do
		changeset = User.changeset(%User{})
		render conn, "new.html", changeset: changeset
	end

	def index(conn,params) do
		IO.inspect "Index Conn================="
		IO.inspect conn
		IO.inspect "Params================="
		IO.inspect params
		users = Repo.all(UserForm.User)
		render conn, "index.html", users: users
	end 

	def create(conn,%{"user" => user_params}) do
		IO.inspect "user Params================="
		IO.inspect user_params
		changeset = User.changeset(%User{},user_params)
		IO.inspect "changeset================="
		IO.inspect changeset
		case Repo.insert(changeset) do
			{:ok,user} ->
				conn
				|> put_flash(:info,"#{user.name} Created!!")
				|>redirect(to: user_path(conn, :index))
			{:error, changeset} ->
				render(conn, "new.html", changeset: changeset)
		end
	end

	def show(conn, %{"id" => id}) do
		IO.inspect "Show Conn================="
		IO.inspect conn
		IO.inspect "Show Id================="
		IO.inspect id
		user = Repo.get(UserForm.User, id)
		render conn, "show.html", user: user
	end
end