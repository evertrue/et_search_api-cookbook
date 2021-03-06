CHANGELOG for et_contacts_api
===================================
This file is used to list changes made in each version of the et_contacts_api cookbook.

v1.7.4 (2016-07-01)
-------------------
- Remove New Relice Java Agent `JAVA_OPTIONS`, as the underlying Java Agent they depend on has already been removed from `et_hipsnip-jetty`

v1.7.3 (2016-05-19)
-------------------
- Fix New Relic Java agent env name

v1.7.2 (2016-05-17)
-------------------
- Fix New Relic Java agent `$JAVA_OPTIONS`

v1.7.1 (2016-05-10)
-------------------
- Add New Relic Java agent app name

v1.7.0 (2016-05-10)
-------------------
- Loosen `et_hipsnip-jetty` pin to `~> 2.4` to allow new features

v1.6.0 (2016-03-15)
-------------------
- Loosen `et_hipsnip-jetty` pin to `~> 2.4.5` allow patches

v1.5.5 (2015-07-30)
-------------------
- Tweak jetty log level

v1.5.4 (2015-07-23)
-------------------
- Set jetty java options after storage recipe

v1.5.3 (2015-07-23)
-------------------
- Fix spacing issue in recipe

v1.5.2 (2015-07-23)
-------------------
- Include storage recipe

v1.5.1 (2015-07-23)
-------------------
- Change log directory for the Search API

v1.5.0 (2014-05-19)
-------------------
- Remove autodeployer dependency
- Update et_users 1.4.1
- Update et_hipsnip-jetty 2.1.0
- Remove keys from deploy user
- Modernize test kitchen setup
- Linting cleanup

v1.4.2 (2014-04-18)
-------------------
- Update to et_hipsnip-jetty v2.0.1 to decrease `maxThreads` for Jetty


v1.4.1 (2013-12-19)
-------------------
* Remove New Relic Java Agent from Jetty options

v1.4.0 (2013-12-19)
-------------------
* Remove et_newrelic
* Upgrade et_hipsnip-jetty to 1.3.1
* Clean up Berksfile to make better use of Chef Server
* Add sane version constraints for gems

v1.3.2 (2013-11-21)
-------------------
* Disable a data bag request, as it is unused (no autodeployer yet)
* Clean up code style as per Rubocop
* Add missing dependency to metadata, as per Foodcritic
* Update & expand the README

v1.3.1 (2013-10-10)
-------------------
* Initial release of et_search_api
