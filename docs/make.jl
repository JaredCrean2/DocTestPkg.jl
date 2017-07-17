using Documenter, DocTestPkg

makedocs(
  pages = Any[
  "home" => "index.md",
  "main" => "main.md",
  "Other" => "other.md",
  "Other2" => "other2.md"
  ]
)

deploydocs(
  deps = Deps.pip("mkdocs", "python-markdown-math"),
  repo = "github.com/JaredCrean2/DocTestPkg.jl.git",
  julia = "0.4",
  osname = "linux",
)
