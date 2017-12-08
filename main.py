"""
Entry point script
"""

import time
import config

__author__ = 'Cesar'

if config.console_only == 'True':
    while True:
        time.sleep(1800)
        config.logging.warning("No app running, console only")
else:
    config.logging.warning("----------------App-Start-------------------")
    while True:
        time.sleep(1800)
        config.logging.warning("App running, nothing to see here!")
