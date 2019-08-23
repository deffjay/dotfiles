#!/bin/bash

source ~/bash_utils.sh

echop "Install Swift5 snippets in XCode from ( https://github.com/deffjay/XcodeSwiftSnippets.git )"

mkdir -p  ~/Library/Developer/Xcode/UserData/CodeSnippets/
mkdir -p /tmp/XCodeCodeSnippets

rm -rf ~/Library/Developer/Xcode/UserData/CodeSnippets/assets
git clone https://github.com/deffjay/XcodeSwiftSnippets.git /tmp/XCodeCodeSnippets
mv /tmp/XCodeCodeSnippets/* ~/Library/Developer/Xcode/UserData/CodeSnippets/
rm -rf /tmp/XCodeCodeSnippets

echop "Installed Snippets to ~/Library/Developer/Xcode/UserData/CodeSnippets/! Restart XCode"
