import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://2114246181.github.io',
  base: '/blog',
  trailingSlash: 'always',
  markdown: {
    shikiConfig: {
      theme: 'github-dark',
      wrap: true,
    },
  },
});
