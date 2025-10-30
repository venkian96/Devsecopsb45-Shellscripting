#!/in/bash
echo "using $@"
if test $# -gt 0; then
   SERVICES=$@
   echo "Total args given are $# which are ${SERVICES}."
   echo ""
   for SERVICE in ${SERVICES[@]}; do
       service ${SERVICE} status > /dev/null
         if [ $? -eq 0 ]; then
                echo "The service ${SERVICE} is up & running"
                echo ""
          else
                echo "The service ${SERVICE} is not running or Not installed"
                echo ""
          fi
    done
else 
    echo "You are supposed to give at least one service name as Argument ..."
fi