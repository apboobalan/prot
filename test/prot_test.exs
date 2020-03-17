defmodule ProtTest do
  alias Prot.{English, French, Spanish, Tamil}
  use ExUnit.Case
  doctest Prot

  test "English man greets the world" do
    assert %English{name: "mister"} |> Prot.greet() == "Heylo mister"
  end

  test "French man greets the world" do
    assert %French{name: "monsieur"} |> Prot.greet() == "Bonjour monsieur"
  end

  test "Spanish man greets the world" do
    assert %Spanish{name: "senor"} |> Prot.greet() == "Ola senor"
  end

  test "Tamil man greets the world" do
    assert %Tamil{name: "thalaiva"} |> Prot.greet() == "Vanakkam thalaiva"
  end

  test "Other man greets the world" do
    assert %{name: "everybody"} |> Prot.greet() == "Hello everybody"
  end
end
