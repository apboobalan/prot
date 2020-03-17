defprotocol Prot do
  @fallback_to_any true
  def greet(citizen)
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
