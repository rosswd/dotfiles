# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$_";
}

# Return checksums for a file
function allsums() {
    openssl sha1 "$1"; openssl dgst -sha256 "$1"; openssl md5 "$1";
}
