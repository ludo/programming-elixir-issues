defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [ app: :issues,
      version: "0.0.1",
      name: "Issues",
      source_url: "https://github.com/ludo/programming-elixir-issues",
      elixir: "~> 0.10.2",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:httpotion] ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [ {:ex_doc, github: "elixir-lang/ex_doc"},
      {:httpotion,"0.2.2",[github: "myfreeweb/httpotion"]},
      {:jsonex,"2.0",[github: "marcelog/jsonex", tag: "2.0"]}
    ]
  end
end
