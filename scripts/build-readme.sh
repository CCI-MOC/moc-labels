#!/bin/sh

sed '
/@SINGLE_VALUE_AXES@/ {
	r single-value-axes.md
	d
}
/@MULTI_VALUE_AXES@/ {
	r multi-value-axes.md
	d
}
' templates/README.md.in
