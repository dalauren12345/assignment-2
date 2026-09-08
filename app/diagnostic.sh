#!/bin/bash
echo "Diagnostic Tool"

case "$1" in
    system)
        echo "System diagnostics"
        hostname
        whoami
        uname -a
        uptime
        ;;

    network)
        if [ -z "$2" ]; then
            echo "Error: host required"
            exit 2
        fi
        echo "Checking network: $2"
        ping -c 1 "$2"
        ;;

    disk)
        echo "Disk diagnostics"
        df -h
        ;;

    help)
        echo "Usage: diagnostic {system|network <host>|disk|help}"
        ;;

    "")
        echo "Error: command required"
        echo "Usage: diagnostic {system|network <host>|disk|help}"
        exit 2
        ;;

    *)
        echo "Error: invalid command"
        echo "Usage: diagnostic {system|network <host>|disk|help}"
        exit 2
        ;;
esac
