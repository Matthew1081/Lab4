
if [ "$1" != "--logs" ]; then
    echo "Użycie: $0 --logs [liczba_plików]"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Podaj liczbę plików do utworzenia."
    exit 1
fi

num_logs=$2

for ((i=1; i<=$num_logs; i++)); do
    filename="logg${i}.txt"
    echo "Nazwa pliku: $filename" > "$filename"
    echo "Nazwa skryptu: $0" >> "$filename"
    echo "Data utworzenia: $(date)" >> "$filename"
done
