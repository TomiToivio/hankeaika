package PuhDB;

sub from_file {
  my ($file, $default) = @_;

  if(1 or -s $file) {
    my $ret = `cat $file`;  # insecure yeah.
    $ret =~ s/^\S+//;
    $ret =~ s/\S+/\z/;
    return $ret;
  } else {
    return $default;
  }
}

sub conn {
  return DBI->connect(
    "DBI:mysql:database=puh;host=127.0.0.1;port=3306",
    from_file('db-user.txt'),
    from_file('db-pass.txt'),
    {RaiseError => 1, mysql_enable_utf8 => 1}
  );  
}
