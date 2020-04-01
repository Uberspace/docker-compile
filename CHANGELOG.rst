=========
CHANGELOG
=========

.. _CHANGELOG_v0.3.0:

v0.3.0
======

.. _CHANGELOG_v0.3.0_Summary:

Summary
-------

We now use `devtoolset <https://www.softwarecollections.org/en/scls/rhscl/devtoolset-8/>` in our images, to support a more recent build-chain.

.. _CHANGELOG_v0.3.0_Added Features:

Added Features
--------------

- 📦 Add ``centos-release-scl`` repo and installed ``devtoolset-8``, active by default.


.. _CHANGELOG_v0.3.0_Updates:

Updates
-------

- 🐳 supported Docker tags.


.. _CHANGELOG_v0.2.1:

v0.2.1
======

.. _CHANGELOG_v0.2.1_Summary:

Summary
-------

Moved *Dockerfiles* for tags to branches.

.. _CHANGELOG_v0.2.1_Changes:

Changes
-------

- 🚚 Moved Dockerfile for tag ``latest`` to branch ``tag/latest``.

- 🚚 Moved Dockerfile for tag ``gcc-4.9.4`` to branch ``tag/gcc-4.9.4``.


.. _CHANGELOG_v0.2.1_Updates:

Updates
-------

- 📝 Add notes on tags and branches to README.


.. _CHANGELOG_v0.2.0:

v0.2.0
======

.. _CHANGELOG_v0.2.0_Added Features:

Added Features
--------------

- 🐳 Added `gcc-4.9.4` tag, for updated *gcc* version in ``/usr/local/``.


.. _CHANGELOG_v0.1.1:

v0.1.1
======

.. _CHANGELOG_v0.1.1_Added Features:

Added Features
--------------

- ➕ install ``which``.


.. _CHANGELOG_v0.1.1_Changes:

Changes
-------

- 🐳 use a single ``RUN`` statement in the Dockerfile.


.. _CHANGELOG_v0.1.1_Updates:

Updates
-------

- 🐍 update ``pip``.


.. _CHANGELOG_v0.1.1_Fixes:

Fixes
-----

- 🐳 use ``LABEL`` instead of ``MAINTAINER``.


.. _CHANGELOG_v0.1.0:

v0.1.0
======

.. _CHANGELOG_v0.1.0_Summary:

Summary
-------

Initial import 🎉.

.. _CHANGELOG_v0.1.0_Added Features:

Added Features
--------------

- 🔧 Added `bumpversion <https://github.com/c4urself/bump2version>`_ configuration.

- 🔧 Added `reno <https://pypi.org/project/reno/>`_ configuration.


.. _CHANGELOG_v0.1.0_Updates:

Updates
-------

- 📝 Updated README.

