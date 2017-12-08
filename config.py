"""
Configuration file
"""
import logging
import os
import sys

__author__ = 'Cesar'

"""
Console only access (via resin.io)
"""
console_only = os.environ['console_only']
logging.warning("Environment Variable: console_only = {0}".format(console_only))

if console_only == 'True':
    pass

else:
    """
    Get config from resin.io
    """
    uuid = os.environ['RESIN_DEVICE_UUID']

    """
    Get config from resin.io
    """
    # Logging level comes from resin in numeric form. Here's a table:
    #      Level	     Numeric value
    #    -----------------------------
    #     CRITICAL	         50
    #     ERROR	             40
    #     WARNING	         30
    #     INFO	             20
    #     DEBUG	             10
    #     NOTSET	         0

    logging_level = int(os.environ['logging'])
    logging.basicConfig(stream=sys.stdout,
                        format='%(asctime)s - [%(levelname)s]: %(message)s',
                        level=logging_level)
    logging.getLogger().setLevel(logging_level)
    logging.warning("Environment Variable: logging_level = {0}".format(logging_level))
