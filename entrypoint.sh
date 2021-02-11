#!/bin/bash

CMD="java -server -Xmx2048M -Xms2048M -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -jar /bin/minecraft nogui"
${CMD}
