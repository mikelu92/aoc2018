{:ok, file} = File.open("input.txt", [:read])

IO.stream(file, :line)
  |> Stream.map(&String.trim/1)
  |> Stream.map(&String.to_integer/1)
  |> Enum.reduce(0, &+/2)
  |> IO.inspect
