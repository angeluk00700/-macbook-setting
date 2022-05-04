#!/bin/bash

TEST_TEXT="/user/home/h/r/data/2019/03/12345_campaign.log.gz"

#REG='.*(?=/home)'
#REG='(?<=cond)\w+'
REG='(?<=/user/home/h/r/data/[0-9]{4}/[0-9]{2}/)[0-9]{1,}'

RESULT=`echo "$TEST_TEXT" | ggrep -Po "$REG"`
echo $RESULT