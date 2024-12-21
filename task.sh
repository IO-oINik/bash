#!/bin/bash

output_file="result.txt"

result=$(ls --help | awk '/-r, --reverse/{flag=1; print; next} flag && /^[[:space:]]*[^-]/{flag=0} flag')

echo -e "$result" > "$output_file"

if [[ -s $output_file ]]; then
  echo "Выдержка успешно сохранена в файл $output_file."
else
  echo "Ошибка: не удалось извлечь выдержку или она пуста."
fi
