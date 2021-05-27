#!/bin/sh

xargs -iREPO github-label-sync -l labels.json REPO < config/repositories.txt
