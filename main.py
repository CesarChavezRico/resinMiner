"""
Entry point script
"""

import time
import config

__author__ = 'Cesar'

if config.console_only == 'True':
    while True:
        config.logging.warning("No app running, console only")
        time.sleep(1800)
else:
    config.logging.warning("----------------App-Start-------------------")
    while True:
        config.logging.warning("App running, nothing to see here!")
        time.sleep(1800)
