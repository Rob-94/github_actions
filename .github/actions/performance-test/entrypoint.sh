#!/bin/sh
echo "Starting JMeter performance test..."
jmeter -n -t /performance-test/performance-test.jmx -l /performance-test/results.jtl
echo "Test completed. Results saved to results.jtl."
