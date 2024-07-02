defmodule Oban.TypeProvider do
  @moduledoc """
  Provides a way to convert a Worker Module Name to a String and vice versa.
  """

  @doc """
  Returns the string representation of the worker module.
  """
  @callback to_string(module() | String.t()) :: String.t()

  @doc """
  Returns the Worker Module from the string representation.
  """
  @callback from_string(String.t()) :: {:ok, module()} | {:error, Exception.t()}
end
