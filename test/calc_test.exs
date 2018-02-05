defmodule CalcTest do
  use ExUnit.Case
  doctest Calc

  test "add" do
    assert Calc.eval("1+2") == 5
    assert Calc.eval("3 + 4 + 5") == 12
    assert Calc.eval("3 + (4+5)") == 12
  end

  test "sub" do
    assert Calc.eval("111 - 11") == 100
    assert Calc.eval("200 - 10-100") == 90 
  end

  test "mul" do
    assert Calc.eval("5 * 9") == 45
    assert Calc.eval("6*10*40") == 2400
  end

  test "div" do
    assert Calc.eval("10/2") == 5
    assert Calc.eval("100/10/2") == 5
  end

  test "mix" do
    assert Calc.eval("100 * ((4 + 8)/4)") == 300
    assert Calc.eval("24 / 6 + (5 -4)") == 5
  end

end

