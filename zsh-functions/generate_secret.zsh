generate_secret() {
    gdate +%s.%N | md5
}
