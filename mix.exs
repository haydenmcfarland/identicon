defmodule Identicon.MixProject do
  use Mix.Project

  def project do
    [
      app: :identicon,
      version: "0.1.0",
      elixir: "~> 1.10",
      deps: deps(),
      escript: escript()
    ]
  end

  def escript do
    [main_module: Identicon]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:egd, github: "erlang/egd"}
    ]
  end
end
