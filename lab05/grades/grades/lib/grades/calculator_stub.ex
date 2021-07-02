defmodule Grades.Calculator_stub do
  def percentage_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
  	mark = 50
  end

  def letter_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
  	mark = "A"
  end

  def numeric_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
  	mark = 4
  end
end