defmodule Teenager do
  def hey(input) do
    cond do
      nothing?(input) -> "Fine. Be that way!"
      question?(input) -> "Sure."
      yelling?(input) -> "Whoa, chill out!"
      :otherwise -> "Whatever."
    end
  end
  defp nothing?(input) do
    String.strip(input) == ""
  end
  defp question?(input) do
    String.last(input) == "?"
  end
  defp yelling?(input) do
    String.upcase(input) == input && String.downcase(input) != input
  end
end
