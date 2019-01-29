#! /usr/bin/env bash

dakota --version

git clone https://github.com/mdpiper/simple-dakota-example.git
cd simple-dakota-example

dakota -i dakota_analysis.in -o dakota_run.out &> run.log
cat run.log
