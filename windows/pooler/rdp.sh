#!/bin/sh

fqdn=$(grep -oE '[a-zA-Z0-9-]+\.delivery\.puppetlabs\.net' "tmp/$1.txt")

# could not find a way to pass the fqdn to the app, maybe can be looked up if there are any arguments
# that we can pass but maybe on a later PR. For now lets echo the fqdn

echo "Create a new connection in Windows app with $fqdn"

open -n /Applications/Windows\ App.app
