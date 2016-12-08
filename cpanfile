requires "Data::Section" => "0.200006";
requires "Dist::Zilla" => "5.031";
requires "Moose" => "2.1405";
requires "MooseX::Role::Parameterized" => "1.08";
requires "Sub::Exporter::ForMethods" => "0.100051";
requires "perl" => "5.008";
requires "version" => "0.88";

on 'build' => sub {
  requires "Module::Build" => "0.4004";
  requires "version" => "0.88";
};

on 'test' => sub {
  requires "File::Spec" => "0";
  requires "Module::Build" => "0.4004";
  requires "Module::Metadata" => "0";
  requires "Sys::Hostname" => "0";
  requires "Test::Requires" => "0.06";
  requires "version" => "0.88";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "2.120900";
};

on 'configure' => sub {
  requires "Module::Build" => "0.4004";
  requires "version" => "0.88";
};
