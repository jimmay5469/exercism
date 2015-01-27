defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    sentence
      |> String.downcase
      |> get_words
      |> count_words
  end
  defp get_words(sentence) do
    Regex.scan(~r/[\p{L}\d-]+/u, sentence)
  end
  defp count_words(words) do
    List.foldl words, %{}, fn([word], dict)->
      Map.update dict, word, 1, fn(val)-> val+1 end
    end
  end
end
