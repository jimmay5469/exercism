defmodule Roman do
  @doc """
  Convert the number to a roman number.
  """
  @numeral_mappings %{
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C",
    500 => "D",
    1000 => "M"
  }

  @spec numerals(pos_integer) :: String.t()
  def numerals(number) do
    number
    |> additive()
    |> String.replace("DCCCC", "CM")
    |> String.replace("CCCC", "CD")
    |> String.replace("LXXXX", "XC")
    |> String.replace("XXXX", "XL")
    |> String.replace("VIIII", "IX")
    |> String.replace("IIII", "IV")
  end

  defp additive(0), do: ""

  defp additive(number) do
    mapping_below = mapping_below(number)
    numeral_mapping = Map.fetch!(@numeral_mappings, mapping_below)

    [
      1..div(number, mapping_below)
      |> Enum.map(fn x -> numeral_mapping end)
      |> Enum.join(),
      number |> rem(mapping_below) |> additive()
    ]
    |> Enum.join()
  end

  defp mapping_below(number) do
    @numeral_mappings |> Map.keys() |> Enum.reverse() |> Enum.find(&(&1 <= number))
  end
end
