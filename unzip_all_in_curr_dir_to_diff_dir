uzdir=/path/to/unzips
for i in *.zip; do
    [ -d "$uzdir/$i" ] || mkdir -p "$uzdir/$i"
    unzip "$i" -d "$uzdir/$i"
done
