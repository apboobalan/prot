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

  test "English man behavior" do
    assert "everybody" |> EnglishCitizen.greet() == "Heylo everybody"
  end

  test "French man behavior" do
    assert "monsieur" |> FrenchCitizen.greet() == "Bonjour monsieur"
  end


  test "Spanish man behavior" do
    assert "senor" |> SpanishCitizen.greet() == "Ola senor"
  end


  test "Tamil man behavior" do
    assert "thalaiva" |> TamilCitizen.greet() == "Vanakkam thalaiva"
  end
end
