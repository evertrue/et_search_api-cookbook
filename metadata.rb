name             'et_search_api'
maintainer       'EverTrue, Inc.'
maintainer_email 'devops@evertrue.com'
license          'All rights reserved'
description      'Wrapper cookbook to support EverTrue Search API'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.7.1'

depends         'et_hipsnip-jetty', '~> 2.4'
depends         'et_users', '>= 1.4.1'
depends         'storage', '~> 2.1'
