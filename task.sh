#!/bin/bash

#7.Сохранить в файл выдержку из мануала к команде ls (man ls), в которой будет описано использование ключа -r.

output_file="result.txt"

result=$(ls --help | awk '/-r, --reverse/{flag=1; print; next} flag && /^[[:space:]]*[^-]/{flag=0} flag')

echo -e "$result" > "$output_file"

if [[ -s $output_file ]]; then
  echo "Выдержка успешно сохранена в файл $output_file."
else
  echo "Ошибка: не удалось извлечь выдержку или она пуста."
fi
