defmodule Greeting do
    @spec main(any()) :: :ok
    def main(args \\ []) do
      {opts, _word, _errors} = OptionParser.parse(args, switches: [time: :string])
      IO.puts("Good #{opts[:time] || "morning"}!")
    end

end
