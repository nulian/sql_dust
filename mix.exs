defmodule SqlDust.Mixfile do
  use Mix.Project

  def project do
    [app: :sql_dust,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev},
      {:inflex, "~> 1.5.0"},
      {:inch_ex, ">= 0.0.0", only: :docs},
      {:credo, "~> 0.2", only: [:dev, :test]}
    ]
  end

  defp description do
    """
    Easy. Simple. Powerful. Generate (complex) SQL queries using magical Elixir SQL dust.
    """
  end

  defp package do
    [
      maintainers: ["Paul Engel"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/archan937/sql_dust"}
    ]
  end
end
