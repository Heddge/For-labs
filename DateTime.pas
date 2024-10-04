begin
  var year := ReadInteger('Введите год:');
  var flag := False;
  Assert(year > 0);
  if (year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0) then
    flag := True;
  Print($'Год високосный -> {flag}');
end.