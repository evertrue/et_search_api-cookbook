name             'et_search_api'
maintainer       'EverTrue, Inc.'
maintainer_email 'devops@evertrue.com'
license          'All rights reserved'
description      'Wrapper cookbook to support EverTrue Search API'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.4.2'

depends         'et_hipsnip-jetty', '= 2.0.1'
depends         'et_users', '>= 1.1.1'
depends         'autodeployer', '= 1.0.2'
