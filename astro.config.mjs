// @ts-check
import { defineConfig } from 'astro/config';

import db from '@astrojs/db';

import node from '@astrojs/node';

import react from '@astrojs/react';

// https://astro.build/config
export default defineConfig({
  integrations: [db(), react()],
  output: 'server',

  adapter: node({
    mode: 'standalone'
  })
});