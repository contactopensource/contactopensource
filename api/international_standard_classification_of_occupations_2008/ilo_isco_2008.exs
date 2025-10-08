# To run this script:
#
# ```sh
# mix run -r priv/repo/seeds/ilo_isco_2008.exs
# ```

File.stream!("priv/repo/seeds/ilo_isco_2008.csv")
|> CSV.decode!(headers: true, escape_max_lines: 200)
|> Enum.each(fn row ->
  IO.inspect(row)
  Navatrack.Repo.insert!(%Navatrack.Codes.IloIsco2008{
    locale_code: "en-GB",
    code: row["Code"],
    name: row["Name"],
    definition_as_markdown: row["Definition"],
  })
end)
