#!/bin/bash
psql -d libredte -c 'GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO user_libredte;'
psql -d libredte -c 'GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO user_libredte;'
