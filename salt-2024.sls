# Update in 2024 after Broadcom decommissioned the old Salt URL.
# For more information:
# https://saltproject.io/blog/salt-project-package-repo-migration-and-guidance/
deb [signed-by=/etc/apt/keyrings/salt-archive-keyring.gpg arch=amd64] https://packages.broadcom.com/artifactory/saltproject-deb stable main: 
  pkgrepo.managed:
    - file: /etc/apt/sources.list.d/salt.list
    - keyserver: keyserver.ubuntu.com
    - keyid: 64CBBC8173D76B3F
    - aptkey: False
    - clean_file: True