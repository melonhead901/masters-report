CUT_FOR_USER_DOCS = 4
AFTER_USER_DOCS = 5
CUT_FOR_DEVEL_DOCS = 5
AFTER_DEVEL_DOCS = 6

all: thesis-cover.pdf user_docs.pdf thesis.pdf devel_docs.pdf
	pdftk A=thesis.pdf B=user_docs.pdf C=devel_docs.pdf cat A1-$(CUT_FOR_USER_DOCS) B A$(AFTER_USER_DOCS)-$(CUT_FOR_DEVEL_DOCS) C A$(AFTER_DEVEL_DOCS)-end output thesis_docs.pdf
	pdftk thesis-cover.pdf thesis_docs.pdf cat output DonohueThesis.pdf