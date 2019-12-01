defmodule AdventOfCode2019.Day01Test do
  use ExUnit.Case
  alias AdventOfCode2019.Day01

  describe "calculate_fuel/1" do
    test "calculates fuel" do
      assert Day01.calculate_fuel(12) == 2
      assert Day01.calculate_fuel(14) == 2
      assert Day01.calculate_fuel(1969) == 654
      assert Day01.calculate_fuel(100_756) == 33583
    end
  end

  describe "calculate_fuel_with_fuel/1" do
    test "calculates fuel" do
      assert Day01.calculate_fuel_with_fuel(1969) == 966
      assert Day01.calculate_fuel_with_fuel(100_756) == 50346
    end
  end

  describe "part_1/0" do
    test "return correct answer" do
      assert Day01.part_1() == 3_325_347
    end
  end

  describe "part_2/0" do
    test "return correct answer" do
      assert Day01.part_2() == 4_985_145
    end
  end
end
