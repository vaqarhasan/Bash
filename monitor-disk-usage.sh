#!/bin/bash
# Monitor disk usage and alert if usage exceeds 80%

THRESHOLD=80

df -h | awk 'NR>1 { if ($5+0 > ENVIRON["THRESHOLD"]) print $0 }'
