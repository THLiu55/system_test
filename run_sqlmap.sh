#!/bin/bash
echo "SQL Injection test1: booking hotel"
python3 sqlmap.py -u "http://csi420-01-vm7.ucd.ie/hotel/order-success?hotel_id=1&cost=1&roomID=1&s_date=5%2F12%2F2023&e_date=5%2F13%2F2023&name=xxx"

echo "SQL Injection test2: booking flight"
python3 sqlmap.py -u "http://csi420-01-vm7.ucd.ie/flight/order-success?flight_id=2&date=5%2F12%2F2023&cost=1295.7&name=Flight"

echo "SQL Injection test2: book acitvity"
python3 sqlmap.py -u "http://csi420-01-vm7.ucd.ie/activity/order-success?activity_id=1&date=5%2F12%2F2023&cost=128.1&name=changed"

echo "SQL Injection test2: book tour"
python3 sqlmap.py -u "http://csi420-01-vm7.ucd.ie/tour/order-success?tour_id=2&date=5%2F12%2F2023&cost=5.25&name=Tianhao+Liu