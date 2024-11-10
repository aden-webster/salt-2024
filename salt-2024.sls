# Update in 2024 after Broadcom decommissioned the old Salt URL.
# For more information:
# https://saltproject.io/blog/salt-project-package-repo-migration-and-guidance/

salt_repo:
  pkgrepo.managed:
    - name: 'deb [signed-by=/etc/apt/keyrings/salt-archive-keyring-2023.gpg] https://packages.broadcom.com/artifactory/saltproject-deb stable main'
    - file: /etc/apt/sources.list.d/salt.list
    - key_url: https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public
    - aptkey: False
    - clean_file: True