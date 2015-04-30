$filename = '\\Program Files\\Microsoft Visual Studio\\VC98\\Bin\\Rebase.exe';
$delimiter = '\\\\';

@parts = split /$delimiter/, $filename;

print "@parts\n";
print "First element: <$parts[0]>, Last element: $parts[-1]\n";