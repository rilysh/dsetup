#!/bin/sh

main() {
    mkdir -p .emacs.d/
    cp /home/rilysh/.emacs.d/*.el .emacs.d/ && cp -r /home/rilysh/.emacs.d/custom/ .emacs.d/
}

main
