defmodule UserForm.UserView do
  use UserForm.Web, :view
  
  alias UserForm.User
	def first_name(%User{name: name}) do
		name
		|> String.split(" ")
		|> Enum.at(0)
	end
end