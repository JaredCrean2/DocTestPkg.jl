using Documenter, DocTestPkg

makedocs(
  pages = Any[
  "home" => "index.md",
  "Other" => "other.md"
  ]
)

deploydocs(
  deps = Deps.pip("mkdocs", "python-markdown-math")
  repo = "github.com/JaredCrean2/DocTestPkg.jl.git",
  julia = "0.4",
  osname = "linux",
)
