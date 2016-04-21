# Bugzilla Schema Doc Generation

## 1. Introduction

This repository contains the code and documents used to generate
the `online database schema documentation <http://schema.seyman.fr/>`.
This is a fork of the bugzilla-schema project from the good people
at Ravenbrook.

## 2. Objectifs

This project has a number of objectives:

* Its goal is to generate documentation for a database schema. It
  should, given a version of a known application, produce documentation
  for the schema used by that version.
* By extension, another objective of this project is that its maintenance
  should be kept as simple as possible. In particular, adding a new version
  to a known application should respect the DRY principle and only require
  updating the project in one and only one place.
* This project makes heavy use of third party Perl modules. Should it expose
  bugs in these modules, those bugs should be fixed there, not hacked around
  in this project.

## 3. Requirements

For hosting:

* Perl and the CPAN modules used by the project
* a web server that can run Plack applications

For updating:

* The ability to create installations for different versions of known
  applications, using the default database engine.
* Understanding of basic Perl data structures.
* Patience.
