defmodule Geom do
  @moduledoc """
  Defines useful geometry functions.
  """

  @doc """
  calculates the area of a rectangle given it's width and height.
  default value is 1.
  """

  @spec area(number, number) :: number

  def area(w \\ 1, h \\ 1) do
    w * h
  end
end
