defmodule Geom do
  @moduledoc """
  Defines useful geometry functions.
  """

  @spec area(atom, number, number) :: number

  @doc """
  calculates the area of a shape given it's dimensions.
  default values are 1.

  valid shapes are: :rectangle, :triangle and :ellipse
  """

  def area({shape, d1, d2}) do
    area(shape, d1, d2)
  end

  defp area(:rectangle, width, height) when width >= 0 and height >= 0 do
    width * height
  end

  defp area(:triangle, base, height) when base >= 0 and height >= 0 do
    (base * height) / 2
  end

  defp area(:ellipse, axis_a, axis_b) when axis_a >= 0 and axis_b >= 0 do
    axis_a * axis_b * :math.pi()
  end

  defp area(_, _, _) do
    0
  end
end
