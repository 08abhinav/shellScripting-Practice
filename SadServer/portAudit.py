

############################################################################################################################
# Author: Abhinav Negi
#
# Question: The security team removed common network recon utilities from this host. Your job is to determine which TCP ports 
# on localhost (127.0.0.1) are accepting connections.
# The ports to check are listed in /home/admin/ports-to-scan.txt (one port per line).
# 
# Write your results to /home/admin/port-audit.txt with one line per port, sorted by port number (ascending), using this format:
# PORT STATUS
# where STATUS is exactly open or closed (lowercase).

# A template file /home/admin/port-audit.txt is available with values per port "open|closed", delete the separator and the 
# incorrect value per port or re-create the file.

# The following are not available on this system (removed or restricted): ss, netstat, nmap, nc, telnet, curl, wget, lsof, 
# tcpdump, openssl, fuser.
#
# NOTE: This script was executed on sadserver instance.
#############################################################################################################################

import socket

with open("/home/admin/ports-to-scan.txt") as f:
    ports = [int(i.strip()) for i in f if i.strip()]
ports.sort()

with open("/home/admin/port-audit.txt", "w") as out:
    for port in ports:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(1)

        res = s.connect_ex(("127.0.0.1", port))
        status = "Open" if res == 0 else "Closed"
        out.write(f"{port} {status}\n")
        s.close()
