begin
  var year := ReadInteger('Введите год:');
  var flag := False;
  Assert(year > 0);
  if (year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0) then
    flag := True;
  Println($'Год високосный -> {flag}');
  var (day1, month1, day2, month2) := ReadInteger4('Введите число и месяц первой даты, аналогично - второй:');
  Assert((day1 < 32) and (day2 < 32) and (month1 < 13) and (month2 < 13));
  Assert((day1 > 0) and (day2 > 0) and (month1 > 0) and (month2 > 0));
  if (30*(month1-1 + day1)) < (30*(month2 - 1) + day2) then
    Println('Месяц, ближайший к новому году -> 2')
  else
    Println('Месяц, ближайший к новому году -> 1');
  var amount_days : Integer;
  if flag then
    amount_days := 366
  else
    amount_days := 365;
  Println($'Количество дней в {year} году - > {amount_days}');
  var (year1, year2) := ReadInteger2('Введите два года (первый больше другого):');
  Assert(year1 < year2);
  var amount_between_years := 0;
  for var i := year1 to year2 do
    if (i mod 4 = 0) and (i mod 100 <> 0) or (i mod 400 = 0) then
      amount_between_years += 366
    else
      amount_between_years += 365;
  Println($'Количество дней между {year1} и {year2} -> {amount_between_years}');
end.