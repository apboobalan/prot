defprotocol Prot do
  @fallback_to_any true
  def greet(citizen)
end

defmodule Behave do
  @callback greet(name :: String) :: String
end

defimpl Prot, for: Prot.English do
  def greet(%{name: name}) do
    "Heylo #{name}"
  end
end

defimpl Prot, for: Prot.French do
  def greet(%{name: name}) do
    "Bonjour #{name}"
  end
end

defimpl Prot, for: Prot.Spanish do
  def greet(%{name: name}) do
    "Ola #{name}"
  end
end

defimpl Prot, for: Prot.Tamil do
  def greet(%{name: name}) do
    "Vanakkam #{name}"
  end
end

defimpl Prot, for: Any do
  def greet(%{name: name}) do
    "Hello #{name}"
  end
end

defmodule EnglishCitizen do
  @behaviour Behave
  def greet(name) do
    "Heylo #{name}"
  end
end

defmodule FrenchCitizen do
  @behaviour Behave
  def greet(name) do
    "Bonjour #{name}"
  end
end

defmodule SpanishCitizen do
  @behaviour Behave
  def greet(name) do
    "Ola #{name}"
  end
end

defmodule TamilCitizen do
  @behaviour Behave
  def greet(name) do
    "Vanakkam #{name}"
  end
end
