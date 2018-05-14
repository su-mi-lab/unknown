defmodule HandlerTest do
  use ExUnit.Case
  doctest Handler.Articles

  test "greets the world" do
    assert Handler.Articles.hello() == :world
  end
end
