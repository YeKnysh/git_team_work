# Проверка: есть ли файлы с указанным расширением в исходной директории
matching_files=$(find "$source_directory" -maxdepth 1 -type f -name "*.$file_extension")

if [ -z "$matching_files" ]; then
    echo "В директории '$source_directory' нет файлов с расширением .$file_extension"
    exit 1
fi


# Копирование всех найденных файлов в целевую директорию
for file in $matching_files; do
    cp "$file" "$target_directory"
    echo "Скопирован файл: $file"
done

echo "Копирование завершено."

