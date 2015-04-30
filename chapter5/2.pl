$path = $ENV{path};
@dirs = split(";", $path);

print "Number of directories: ", scalar(@dirs), "\n";

$" = "\n";
print "Directories:\n@dirs\n";