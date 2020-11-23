#!/bin/bash

CMD="java -server -Xmx2048M -Xms2048M -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -jar server.jar nogui"
${CMD}
