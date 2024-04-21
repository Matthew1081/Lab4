
if [ "$1" == "--help" ]; then
    echo "Dostępne opcje:"
    echo "--date: Wyświetla dzisiejszą datę."
    echo "--logs [liczba]: Tworzy pliki logx.txt (gdzie x = 1 do liczba) i zapisuje informacje o ich utworzeniu."
    echo "--help: Wyświetla wszystkie dostępne opcje."
    exit 0
fi

case "$1" in
    --date)
        date
        ;;
    --logs)
        if [ -z "$2" ]; then
            echo "Podaj liczbę plików do utworzenia."
            exit 1
        fi
        num_logs=$2
        for ((i=1; i<=$num_logs; i++)); do
            filename="log${i}.txt"
            echo "Nazwa pliku: $filename" > "$filename"
            echo "Nazwa skryptu: $0" >> "$filename"
            echo "Data utworzenia: $(date)" >> "$filename"
        done
        ;;
    *)
        echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
        exit 1
        ;;
esac
