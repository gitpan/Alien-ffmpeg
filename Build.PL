
use strict;
use warnings;

use Module::Build 0.3601;
use lib qw{inc}; use Alien::Base::ModuleBuild;

my %module_build_args = (
  "alien_name" => "ffmpeg",
  "alien_repository" => {
    "host" => "ffmpeg.org:80",
    "location" => "/releases",
    "pattern" => qr/(?^:^ffmpeg-([\d\.]+)\.tar\.gz$)/,
    "protocol" => "http"
  },
  "build_requires" => {
    "Test::More" => "0.96"
  },
  "configure_requires" => {
    "Alien::Base" => "0.002",
    "File::ShareDir" => "1.03",
    "Path::Class" => "0.013"
  },
  "dist_abstract" => "Easy installation of ffmpeg",
  "dist_author" => [
    "Torsten Raudssus <torsten\@raudss.us>"
  ],
  "dist_name" => "Alien-ffmpeg",
  "dist_version" => "0.100",
  "license" => "perl",
  "module_name" => "Alien::ffmpeg",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Alien::Base" => "0.002",
    "File::ShareDir" => "1.03",
    "Path::Class" => "0.013"
  },
  "script_files" => [
    "bin/ffmpeg",
    "bin/ffprobe",
    "bin/ffserver"
  ]
);


my $build = Alien::Base::ModuleBuild->new(%module_build_args);

$build->create_build_script;
