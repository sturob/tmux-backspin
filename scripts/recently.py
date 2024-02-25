#!/usr/bin/env python3

import sys
import time
from datetime import datetime

# 24 hours in seconds
one_day = 24 * 60 * 60

for line in sys.stdin:
    parts = line.split()
    timestamp = int(parts[0])
    event = " ".join(parts[2:])

    current_timestamp = int(time.time())
    dt = datetime.fromtimestamp(timestamp)

    if current_timestamp - timestamp > one_day:
        # Format as date if older than 24 hours
        str_time = dt.strftime("%d/%m")
    else:
        # Format as time if within last 24 hours
        str_time = dt.strftime("%H:%M")

    print(f"{str_time} > {event}")

