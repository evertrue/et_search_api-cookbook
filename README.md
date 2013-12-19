# et_search_api Cookbook

This is a wrapper cookbook to support the EverTrue Search API. It wraps the [et_hipsnip-jetty cookbook](https://github.com/evertrue/et_hipsnip-jetty-cookbook).

## Requirements

* `hipsnip-jetty` - `et_search_api` needs `hipsnip-jetty` to provide web services.

## Attributes

All attributes are either overrides, or needed values, for the `et_hipsnip-jetty` cookbook.

These are used by `et_hipsnip-jetty` to build a YAML file for HAProxy, so it is aware of its nodes & can properly bounce apps:

* `node['cluster']['role']`
* `node['cluster']['name']`

The `cluster` attributes above do _not_ have any defaults set in either the `et_hipsnip-jetty` cookbook, or the `hipsnip-jetty` cookbook.

The other attributes are overrides, to provide settings for monitoring & starting the app:

* `node['jetty']['java_options']`

## Usage

Add the recipe to a node’s run list.

## License and Authors

Authors: EverTrue <devops@evertrue.com>
