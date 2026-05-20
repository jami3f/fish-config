function fish_greeting
    test $TERM != "xterm-ghostty"; and return 0
    cat (random choice ~/.config/fish/greeting_resources/images/ansi/*.ansi)
end
