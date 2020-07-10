
oc cp mq-commands.mqsc mq/mq-quickstart-ibm-mq-0:/tmp/mq-commands.mqsc

oc -n mq exec -it mq-quickstart-ibm-mq-0  -c qmgr -- bash -c "runmqsc < /tmp/mq-commands.mqsc"

