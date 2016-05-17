echo "listen = http://127.0.0.1:7777 $PAC_SERVER_ADDR:$PAC_SERVER_PORT \nproxy = ss://$SS_METHOD:$SS_PASSWORD@$SS_SERVER_ADDR:$SS_SERVER_PORT" > rc
echo "========================================================================"
echo " You can now connect to this Cow server:"
echo ""
echo " Cow Server: $PAC_SERVER_ADDR:$PAC_SERVER_PORT"
echo " ShadowSocks server: ss://$SS_METHOD:$SS_PASSWORD@$SS_SERVER_ADDR:$SS_SERVER_PORT"
echo " pac url is http:/$PAC_SERVER_ADDR:$PAC_SERVER_PORT/pac"
echo ""
echo " config file 'rc':"
cat rc
echo " everyone can connect this server, So keep secret!"
echo "========================================================================"

./cow -rc='rc' 
