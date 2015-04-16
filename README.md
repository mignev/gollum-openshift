# Get your own gollom wiki onto OpenShift

This project is all about getting your own [gollum](https://github.com/github/gollum) wiki hosted on
Red Hat's [Openshift](https://openshift.redhat.com/app/). It's quite straight forward. Just sign up
for an OpenShift account and follow these instructions:

    $ rhc app create -a gollum -t ruby-1.9
    $ cd gollum
    $ git remote add upstream -m master git@github.com:mignev/gollum-openshift.git
    $ git pull -s recursive -X theirs upstream master
    $ git push

The default username/password are wiki/wiki.


Let me know if you have problems ...

Enjoy,

Hardy
