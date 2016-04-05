oracle_java
===========

Ansible role which installs a particulat version of Oracle Java. It only works
for RedHat at the moment. You can use this role
to install multiple version of Oracle Java and choose which one is the default
one for which the `/usr/bin/` links will be created. All Java packages not
managed by this role will be automatically uninstalled.


Role variables
--------------

List of variables used by the role:

```
# Default Java distribution [jdk|jre|none]
oracle_java_distribution: jdk

# Default major version
oracle_java_version_major: 1

# Default minor version
oracle_java_version_minor: 7

# Default patch version
oracle_java_version_patch: 0

# Default update version
oracle_java_version_update: 80

# Default architerture
oracle_java_arch: 64

# Default development branch
oracle_java_branch: "15"

# Indicates whether this Java versin should be set as default alternative
oracle_java_default: false

# Flag which triggers the package cleaning
oracle_java_finish: false
```
