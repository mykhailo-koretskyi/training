
@arr = qw(John mark carol Neil bruce Dave anna Julia robert Ted);

@res = sort {lc($a) cmp lc($b)} @arr;

print join(", ", @res);