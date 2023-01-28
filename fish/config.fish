if status is-interactive
    # Commands to run in interactive sessions can go here
    export hostip=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
    export http_proxy="http://$hostip:7890"
    export https_proxy="http://$hostip:7890"
    export HTTP_PROXY="http://$hostip:7890"
    export HTTPS_PROXY="http://$hostip:7890"
end
