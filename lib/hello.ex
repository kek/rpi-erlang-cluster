defmodule Hello do
  @version Hello.Mixfile.project()[:version]
  @git_commit :os.cmd('git rev-parse HEAD') |> List.to_string() |> String.trim()

  def version do
    "#{@version} #{@git_commit}"
  end
end
