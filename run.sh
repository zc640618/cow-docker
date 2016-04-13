echo "========================================================================"
echo " You can now connect to this ShadowSocks server:"
echo ""
echo " port: $COW_SERVER_PORT"
echo " ShadowSocks server: ss://$SS_METHOD:$SS_PASSWORD@$SS_SERVER_ADDR:$SS_SERVER_PORT"
echo " pac url is http://0.0.00:$COW_SERVER_PORT/pac"
echo ""
echo " everyone can connect this server, So keep secret!"
echo "========================================================================"

echo "listen = http://0.0.0.0:$COW_SERVER_PORT \n proxy = ss://$SS_METHOD:$SS_PASSWORD@$SS_SERVER_ADDR:$SS_SERVER_PORT" > rc
./cow -rc='rc' 