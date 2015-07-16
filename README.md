<div>
    <a href="https://travis-ci.org/pjfl/p5-dist-zilla-plugin-test-reportmetadata"><img src="https://travis-ci.org/pjfl/p5-dist-zilla-plugin-test-reportmetadata.svg?branch=master" alt="Travis CI Badge"></a>
    <a href="http://badge.fury.io/pl/Dist-Zilla-Plugin-Test-ReportMetadata"><img src="https://badge.fury.io/pl/Dist-Zilla-Plugin-Test-ReportMetadata.svg" alt="CPAN Badge"></a>
    <a href="http://cpants.cpanauthors.org/dist/Dist-Zilla-Plugin-Test-ReportMetadata"><img src="http://cpants.cpanauthors.org/dist/Dist-Zilla-Plugin-Test-ReportMetadata.png" alt="Kwalitee Badge"></a>
</div>

# Name

Dist::Zilla::Plugin::Test::ReportMetadata - Report on prerequisite versions during automated testing

# Synopsis

    # In dist.ini
    [Test::ReportMetadata]

# Description

The is a clone of [Dist::Zilla::Plugin::Test::ReportPrereqs](https://metacpan.org/pod/Dist::Zilla::Plugin::Test::ReportPrereqs) but with the
dependency on [ExtUtils::MakeMaker](https://metacpan.org/pod/ExtUtils::MakeMaker) replaced with one on
[Module::Metadata](https://metacpan.org/pod/Module::Metadata). If you are using [Module::Build](https://metacpan.org/pod/Module::Build) then [Module::Metadata](https://metacpan.org/pod/Module::Metadata)
is already a dependency

Versions are reported based on the result of the `version` attribute from
[Module::Metadata](https://metacpan.org/pod/Module::Metadata)

Additionally a selection of environment variables are also displayed

# Configuration and Environment

Defines the following attributes;

- `env_vars`

    An array reference of environment variable names displayed on the test report.
    Set using the multivalued initialisation argument `env_var`. If the list
    has no values then nothing is printed. An empty list can be set with

        [Test::ReportMetadata]
        env_var = none

- `excludes`

    An array reference of module names to exclude from the test report.
    Set using the multivalued initialisation argument `exclude`

- `includes`

    An array reference of module names to include in the test report.
    Set using the multivalued initialisation argument `include`

- `verify_prereqs`

    A boolean defaulting to true. If true emits lots of warnings if prerequisites
    are not satisfied

# Subroutines/Methods

## `gather_files`

Required by [Dist::Zilla::Role::FileGatherer](https://metacpan.org/pod/Dist::Zilla::Role::FileGatherer)

## `mvp_multivalue_args`

Returns a list of configuration attribute names that are treated as
multi valued

## `register_prereqs`

Required by [Dist::Zilla::Role::PrereqSource](https://metacpan.org/pod/Dist::Zilla::Role::PrereqSource)

# Diagnostics

None

# Dependencies

- [Data::Dumper](https://metacpan.org/pod/Data::Dumper)
- [Data::Section](https://metacpan.org/pod/Data::Section)
- [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla)
- [Moose](https://metacpan.org/pod/Moose)
- [Sub::Exporter::ForMethods](https://metacpan.org/pod/Sub::Exporter::ForMethods)

# Incompatibilities

There are no known incompatibilities in this module

# Bugs and Limitations

There are no known bugs in this module. Please report problems to
http://rt.cpan.org/NoAuth/Bugs.html?Dist=Dist-Zilla-Plugin-Test-ReportMetadata.
Patches are welcome

# Acknowledgements

Larry Wall - For the Perl programming language

# Author

Peter Flanigan, `<pjfl@cpan.org>`

# License and Copyright

Copyright (c) 2015 Peter Flanigan. All rights reserved

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself. See [perlartistic](https://metacpan.org/pod/perlartistic)

This program is distributed in the hope that it will be useful,
but WITHOUT WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE
