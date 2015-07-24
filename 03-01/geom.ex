defmodule Geom do
  @moduledoc """
  Defines useful geometry functions.
  """

  @spec area(atom, number, number) :: number

  @doc """
  calculates the area of a rectangle given it's width and height.
  default value is 1.
  """
  def area(:rectangle, width, height) do
    width * height
  end

  @doc """
  calculates the area of a triangle given it's base and height.
  default value is 1.
  """
  def area(:triangle, base, height) do
    (base * height) / 2
  end

  @doc """
  calculates the area of a ellipse given it's radiuses.
  default value is 1.
  """
  def area(:ellipse, axis_a, axis_b) do
    axis_a * axis_b * :math.pi()
  end
end
