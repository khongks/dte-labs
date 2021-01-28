#!/bin/sh

oc exec -it mq-demo-ibm-mq-0 -- runmqsc QUICKSTART < mq_ace_lab.mqsc
