# Resume

Resumes are generated in different formats from
a single [markdown file](/resume.md) using [Pandoc](https://pandoc.org/).
A [Github action](https://github.com/aishuvrb/resume/actions/workflows/publish.yml)
builds and publishes resume files to Github Pages.

Resumes can be accessed at:
- [PDF version](https://aishuvrb.github.io/resume/Aishwhariya.pdf)
- [HTML version](https://aishuvrb.github.io/resume/Aishwhariya.html)
- [Text version](https://aishuvrb.github.io/resume/Aishwhariya.txt)

## Build dependencies

- pandoc
- [wkhtmltopdf](https://wkhtmltopdf.org/)
(pandoc is configured to generate PDF from HTML using this tool)
