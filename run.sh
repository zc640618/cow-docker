echo "listen = http://0.0.0.0:$COW_SERVER_PORT \nproxy = ss://$SS_METHOD:$SS_PASSWORD@$SS_SERVER_ADDR:$SS_SERVER_PORT" > rc
echo "========================================================================"
echo " You can now connect to this Cow server:"
echo ""
echo " port: $COW_SERVER_PORT"
echo " ShadowSocks server: ss://$SS_METHOD:$SS_PASSWORD@$SS_SERVER_ADDR:$SS_SERVER_PORT"
echo " pac url is http://0.0.0.0:$COW_SERVER_PORT/pac"
echo ""
echo " config file 'rc':"
cat rc
echo " everyone can connect this server, So keep secret!"
echo "========================================================================"

./cow -rc='rc' 