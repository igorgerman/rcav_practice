class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end


  def square_root
    @n1 = params["n1"]

    @sqrt = Math.sqrt(@n1.to_i)

    render("square_root")
  end

  def random
    @n1 = params["n1"].to_i

    @n2 = params["n2"].to_i

    # if @n1 > @n2
    #
    #   @range = @n1 - @n2
    #
    # else
    #
    #   @range = @n2 - @n1
    #
    # end

    @random = rand(@n1..@n2)

    render("random")
  end

  def payment

    @apr = (params["apr"].to_f)

    @year = params["year"].to_i

    @principal = params["principal"].to_i


    periodic = (@apr/100)/12.0
    n = @year * 12.0
    per_n = @principal * periodic
    oneplusr = 1.0 + periodic
    neg_n = n * -1.0
    denominator = 1.0 - (oneplusr**(neg_n))

    @monthly_payment = per_n/denominator

    render("payment")

  end

end
