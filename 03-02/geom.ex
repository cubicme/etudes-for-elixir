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
  def area(:rectangle, width, height) when width >= 0 and height >= 0 do
    width * height
  end

  def area(:triangle, base, height) when base >= 0 and height >= 0 do
    (base * height) / 2
  end

  def area(:ellipse, axis_a, axis_b) when axis_a >= 0 and axis_b >= 0 do
    axis_a * axis_b * :math.pi()
  end
end
