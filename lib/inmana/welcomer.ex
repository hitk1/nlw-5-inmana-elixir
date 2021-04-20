defmodule Inmana.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    formated_age = age |> String.to_integer()

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(formated_age)
  end

  defp evaluate("hit", 23) do
    {:ok, "You're very special!"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}!"}
  end

  defp evaluate(name, _age) do
    {:error, "You shall not pass #{name}"}
  end
end
