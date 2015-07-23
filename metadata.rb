name             'et_search_api'
maintainer       'EverTrue, Inc.'
maintainer_email 'devops@evertrue.com'
license          'All rights reserved'
description      'Wrapper cookbook to support EverTrue Search API'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.5.0'

depends         'et_hipsnip-jetty', '= 2.1.0'
depends         'et_users', '>= 1.4.1'
depends         'storage', '~> 2.1'
