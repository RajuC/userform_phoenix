defmodule UserForm.User do

	use UserForm.Web, :model
		schema "users" do
		field :name, :string
		field :username, :string
		field :password, :string, virtual: true
		field :password_hash, :string

		timestamps
	end

  @required_fields ~w(name username)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.
  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :invalid) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:username, min: 1, max: 20)
  end
end

