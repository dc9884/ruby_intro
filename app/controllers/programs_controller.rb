class ProgramsController < ApplicationController
  def home
    # Your code goes below.
    my_birthday = Time.parse("March 8th, 1989")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday

    @your_output = seconds_since_i_was_born

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.
    the_number = rand(2)

    if the_number == 0
      @your_output = "Rock"
    elsif the_number == 1
      @your_output = "Paper"
    else
      @your_output = "Scissors"
    end

    if the_number == 0
      @output2 = "Tie"
    elsif the_number = 1
      @output2 = "You Lose"
    else
      @output2 = "You Win"
    end

    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.
    our_numbers = [4, 10, 6]        # Create an array of numbers
    squared_numbers = []            # Create an empty array

    our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      square = num * num            # Square the number
      squared_numbers.push(square)  # Push it into the squared_numbers array
    end

    @your_output = squared_numbers.sum  # Sum the squares

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a
    multiples = []

    numbers.each do |num|
      if num % 3 == 0 || num % 5 == 0
        multiples.push(num)
      end
    end

    @your_output = multiples.sum

    render("programs/third_program.html.erb")
  end
end
