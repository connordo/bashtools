#!/bin/bash

function gittyup() {
	git add --all;
	git commit -m "$1";
	git push;
}
