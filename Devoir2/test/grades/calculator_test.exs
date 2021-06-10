defmodule Grades.CalculatorTest do
  use ExUnit.Case
  alias Grades.Calculator

  describe "percentage_grade/1" do
    test "TestCase1" do
      assert 35 ==
               Calculator.percentage_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0.70,
                 final: 0.70
               })
    end

    test "TestCase2" do
      assert 74 ==
               Calculator.percentage_grade(%{
                 homework: [0.75, 0.85],
                 labs: [0.50, 1, 0.80],
                 midterm: 0.70,
                 final: 0.70
               })
    end

    test "TestCase3" do
      assert "EIN" ==
               Calculator.letter_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0.70,
                 final: 0.70
               })
    end

    test "TestCase4" do
      assert "B" ==
               Calculator.letter_grade(%{
                 homework: [0.75, 0.85],
                 labs: [0.50, 1, 0.80],
                 midterm: 0.70,
                 final: 0.70
               })
    end

    test "TestCase5" do
      assert "A+" ==
               Calculator.letter_grade(%{
                 homework: [1, 1],
                 labs: [1, 1, 1],
                 midterm: 1,
                 final: 1
               })
    end

    test "TestCase6" do
      assert "A" ==
               Calculator.letter_grade(%{
                 homework: [0.85, 0.85],
                 labs: [0.85, 0.85, 0.85],
                 midterm: 0.85,
                 final: 0.85
               })
    end

    test "TestCase7" do
      assert "A-" ==
               Calculator.letter_grade(%{
                 homework: [0.80, 0.80],
                 labs: [0.80, 0.80, 0.80],
                 midterm: 0.80,
                 final: 0.80
               })
    end

    test "TestCase8" do
      assert "B+" ==
               Calculator.letter_grade(%{
                 homework: [0.75, 0.75],
                 labs: [0.75, 0.75, 0.75],
                 midterm: 0.75,
                 final: 0.75
               })
    end

    test "TestCase9" do
      assert "C+" ==
               Calculator.letter_grade(%{
                 homework: [0.65, 0.65],
                 labs: [0.65, 0.65, 0.65],
                 midterm: 0.65,
                 final: 0.65
               })
    end

    test "TestCase10" do
      assert "C" ==
               Calculator.letter_grade(%{
                 homework: [0.60, 0.60],
                 labs: [0.60, 0.60, 0.60],
                 midterm: 0.60,
                 final: 0.60
               })
    end

    test "TestCase11" do
      assert "D+" ==
               Calculator.letter_grade(%{
                 homework: [0.55, 0.55],
                 labs: [0.55, 0.55, 0.55],
                 midterm: 0.55,
                 final: 0.55
               })
    end

    test "TestCase12" do
      assert "D" ==
               Calculator.letter_grade(%{
                 homework: [0.50, 0.50],
                 labs: [0.50, 0.50, 0.50],
                 midterm: 0.50,
                 final: 0.50
               })
    end

    test "TestCase13" do
      assert "E" ==
               Calculator.letter_grade(%{
                 homework: [0.45, 0.45],
                 labs: [0.45, 0.45, 0.45],
                 midterm: 0.45,
                 final: 0.45
               })
    end

    test "TestCase14" do
      assert "F" ==
               Calculator.letter_grade(%{
                 homework: [0.40, 0.40],
                 labs: [0.35, 0.35, 0.35],
                 midterm: 0.40,
                 final: 0.40
               })
    end

    test "TestCase15" do
      assert 0 ==
               Calculator.numeric_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0.70,
                 final: 0.70
               })
    end

    test "TestCase16" do
      assert 6 ==
               Calculator.numeric_grade(%{
                 homework: [0.75, 0.85],
                 labs: [0.50, 1, 0.80],
                 midterm: 0.70,
                 final: 0.70
               })
    end

    test "TestCase17" do
      assert 10 ==
               Calculator.numeric_grade(%{
                 homework: [1, 1],
                 labs: [1, 1, 1],
                 midterm: 1,
                 final: 1
               })
    end

    test "TestCase18" do
      assert 9 ==
               Calculator.numeric_grade(%{
                 homework: [0.85, 0.85],
                 labs: [0.85, 0.85, 0.85],
                 midterm: 0.85,
                 final: 0.85
               })
    end

    test "TestCase19" do
      assert 8 ==
               Calculator.numeric_grade(%{
                 homework: [0.80, 0.80],
                 labs: [0.80, 0.80, 0.80],
                 midterm: 0.80,
                 final: 0.80
               })
    end

    test "TestCase20" do
      assert 7 ==
               Calculator.numeric_grade(%{
                 homework: [0.75, 0.75],
                 labs: [0.75, 0.75, 0.75],
                 midterm: 0.75,
                 final: 0.75
               })
    end

    test "TestCase21" do
      assert 5 ==
               Calculator.numeric_grade(%{
                 homework: [0.65, 0.65],
                 labs: [0.65, 0.65, 0.65],
                 midterm: 0.65,
                 final: 0.65
               })
    end

    test "TestCase22" do
      assert 4 ==
               Calculator.numeric_grade(%{
                 homework: [0.60, 0.60],
                 labs: [0.60, 0.60, 0.60],
                 midterm: 0.60,
                 final: 0.60
               })
    end

    test "TestCase23" do
      assert 3 ==
               Calculator.numeric_grade(%{
                 homework: [0.55, 0.55],
                 labs: [0.55, 0.55, 0.55],
                 midterm: 0.55,
                 final: 0.55
               })
    end

    test "TestCase24" do
      assert 2 ==
               Calculator.numeric_grade(%{
                 homework: [0.50, 0.50],
                 labs: [0.50, 0.50, 0.50],
                 midterm: 0.50,
                 final: 0.50
               })
    end

    test "TestCase25" do
      assert 1 ==
               Calculator.numeric_grade(%{
                 homework: [0.45, 0.45],
                 labs: [0.45, 0.45, 0.45],
                 midterm: 0.45,
                 final: 0.45
               })
    end

    test "TestCase26" do
      assert 0 ==
               Calculator.numeric_grade(%{
                 homework: [0.40, 0.40],
                 labs: [0.35, 0.35, 0.35],
                 midterm: 0.40,
                 final: 0.40
               })
    end
  end
end
