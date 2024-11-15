set -g fish_greeting ""
# Start X only if we're on a TTY
if not set -q DISPLAY; and test (tty) = "/dev/tty1"
    exec startx
end

if status is-interactive
    neofetch
end
