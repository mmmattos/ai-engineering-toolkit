.PHONY: convert

DIR ?= git

convert:
	luajit scripts/convert_prompts.lua $(DIR)
