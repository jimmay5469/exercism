defmodule Teenager do
  def hey(input) do
    cond do
      is_nothing?(input) -> "Fine. Be that way!"
      is_a_question?(input) -> "Sure."
      is_yelling?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
  defp is_nothing?(input) do
    String.strip(input) == ""
  end
  defp is_a_question?(input) do
    String.last(input) == "?"
  end
  defp is_yelling?(input) do
    String.upcase(input) == input && String.upcase(input) != String.downcase(input)
  end
end
