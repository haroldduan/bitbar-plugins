#!/usr/bin/env python
# -*- coding: utf-8 -*-
# <bitbar.title>Life Percentage</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>harold.duan</bitbar.author>
# <bitbar.author.github>haroldduan</bitbar.author.github>
# <bitbar.desc>Shows what percentage of life you have lived.</bitbar.desc>
# <bitbar.image></bitbar.image>
# <bitbar.dependencies>Python</bitbar.dependencies>
# <bitbar.abouturl></bitbar.abouturl>


from datetime import datetime

dob = datetime(1987, 9, 20, 19, 43, 0)  # Date of birth
dod = datetime(2067, 9, 20, 19, 43, 0)  # Date of death
now = datetime.now()

percent = ((dod - now).total_seconds() / (dod - dob).total_seconds() * 100)
print "❤ %.2f" % percent