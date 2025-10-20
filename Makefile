RESUME_FILE_NAME = Aishwhariya
RESUME_PAGE_TITLE = Aishwhariya Venkateswaran - Resume
OUT_DIR = output
RESUME_PATH = $(OUT_DIR)/$(RESUME_FILE_NAME)

all: $(RESUME_PATH).html $(RESUME_PATH).pdf $(RESUME_PATH).txt $(OUT_DIR)/.nojekyll

$(RESUME_PATH).html: resume.md styles/resume.css
	@mkdir -p $(OUT_DIR)
	@pandoc --standalone --self-contained \
		--css styles/resume.css \
		--from markdown-auto_identifiers --to html \
		--metadata pagetitle="Resume - Aishwhariya Venkateswaran" \
		--output $@ $<

$(RESUME_PATH).pdf: resume.md styles/resume.css
	@mkdir -p $(OUT_DIR)
	@pandoc --standalone --self-contained \
		--css styles/resume.css \
		--from markdown-auto_identifiers --to pdf \
		--metadata pagetitle="Resume - Aishwhariya Venkateswaran" \
		--pdf-engine=wkhtmltopdf \
		--variable=margin-top:0px \
		--variable=margin-left:0px \
		--variable=margin-right:0px \
		--variable=margin-bottom:0px \
		--variable=papersize:a4 \
		--output $@ $<

$(RESUME_PATH).txt: resume.md
	@mkdir -p $(OUT_DIR)
	@pandoc --standalone \
		--from markdown-auto_identifiers --to rst \
		--output $@ $<

 $(OUT_DIR)/.nojekyll:
	@mkdir -p $(OUT_DIR)
	@touch $@

clean:
	@rm -rf $(OUT_DIR)

.PHONY: clean
