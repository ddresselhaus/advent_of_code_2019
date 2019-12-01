defmodule AdventOfCode2019.Day01 do
  def masses() do
    File.read!("lib/inputs/input_01.txt")
    |> String.split("\n")
    |> Enum.reject(fn x -> x == "" end)
    |> Enum.map(&String.to_integer/1)
  end

  def part_1() do
    masses()
    |> Enum.map(fn x -> calculate_fuel(x) end)
    |> Enum.sum()
  end

  def part_2() do
    masses()
    |> Enum.map(fn x -> calculate_fuel_with_fuel(x) end)
    |> Enum.sum()
  end

  def calculate_fuel(mass) do
    (mass / 3)
    |> Float.floor()
    |> round()
    |> Kernel.-(2)
  end

  def calculate_fuel_with_fuel(mass, fuel \\ 0) do
    additional_fuel = calculate_fuel(mass)

    case additional_fuel > 0 do
      false -> fuel
      true -> calculate_fuel_with_fuel(additional_fuel, fuel + additional_fuel)
    end
  end
end
