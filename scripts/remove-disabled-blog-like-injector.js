'use strict';

hexo.extend.filter.register('after_render:html', function(html) {
  const config = hexo.config['Blog-Like'] || {};
  if (config.enable === true) return html;

  return html
    .replace(/\s*<link rel="stylesheet" href="\/Blog-Like\/style\.css">/g, '')
    .replace(/\s*<script src="\/Blog-Like\/Blog-Like\.js"><\/script>/g, '');
});
