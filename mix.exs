defmodule Morph.Mixfile do
  use Mix.Project

  def project do
    [app: :morph,
     name: "Morph",
     source_url: "https://github.com/cmoncrief/elixir-morph",
     version: "0.1.0",
     description: description,
     package: package,
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps() do
    [{:earmark, "~> 1.1", only: :dev},
    {:ex_doc, "~> 0.14", only: :dev}]
  end

  defp description() do
    """
    Lightweight string transformations for Elixir.
    """
  end

  defp package() do
    [
      maintainers: ["Charles Moncrief"],
      licenses: ["BSD"],
      links: %{"GitHub" => "https://github.com/cmoncrief/elixir-morph"}
    ]
  end
end
