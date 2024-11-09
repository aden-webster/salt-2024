# Update SaltStack URL & Public Key

This Salt state automates the process of updating the SaltStack repository URL and public key following Broadcom's acquisition of SaltStack.

## Background:

In late October 2024, Broadcom was gracious enough to give the Saltstack community 3 days (!!) to change the repository URL's for any machine using Saltstack, be it Minion or Master or otherwise.

I created a Salt State that will replace the URL in your package manager and import the new public key. 

*Note* This will replace your `/etc/apt/sources.list.d/salt.list` file, (to remove the now dead saltproject.io repo link) so if you have any edits or customizations there, make sure you back it up. Or remove the `- clean_file: True` from the State. 
