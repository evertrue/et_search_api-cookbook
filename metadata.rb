name             'et_search_api'
maintainer       'EverTrue, Inc.'
maintainer_email 'eric.herot@evertrue.com'
license          'All rights reserved'
description      'Wrapper cookbook to support EverTrue Search API'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.3.1'

depends         'et_hipsnip-jetty', "= 1.3.0"
depends         'et_newrelic'
depends         'autodeployer', '= 1.0.2'
