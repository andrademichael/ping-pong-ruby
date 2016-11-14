class Fixnum
  define_method(:ping_pong) do
    numbers = []
    times() do |time|
      if ((time + 1) % 15 == 0)
        numbers.push("ping-pong")
      elsif ((time + 1) % 3 == 0)
        numbers.push("ping")
      elsif ((time + 1) % 5 == 0)
        numbers.push("pong")
      else
        numbers.push(time + 1)
      end
    end
    numbers
  end
end
