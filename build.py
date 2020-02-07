#!/usr/bin/env python

# Compile all SV-COMP testcases to executable

import os
import subprocess

def link_all_objs(rootdir, dirname, verifier):
    try:
        os.chdir(rootdir + dirname)
        print os.getcwd()
        for filename in os.listdir(os.getcwd()):
            name, ext = os.path.splitext(filename)
            if ext in [".oi", ".oc"]:
                cmdline = ['gcc', '-m32', '-no-pie', filename, verifier, '-o', name]
                print " ".join(cmdline)
                subprocess.call(cmdline)
    except:
        print "Illegal dir " + dirname
    finally:
        os.chdir(rootdir)
    

def link_verifier():
    rootdir = os.getcwd()    
    bindir = rootdir + "/c/bin/"
    verifier = bindir + "verifier/verifier.oc"
    print verifier
    for dirname in os.listdir(bindir):
        if dirname != "verifier" and os.path.isdir(bindir + dirname):
            link_all_objs(bindir, dirname, verifier)
    os.chdir(rootdir)


if __name__ == "__main__":
    cmdline = ['make', '-j4', '-i', 'SYNTAX_ONLY=0', 'CC=clang']
    subprocess.call(cmdline)
    link_verifier()
    
