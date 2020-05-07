#!/bin/bash
psql -d libredte -c 'GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO user_libredte;'
psql -d libredte -c 'GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO user_libredte;'
psql -d libredte -c 'INSERT INTO contribuyente VALUES (55555555, '5', 'Extranjero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NOW());'
psql -d libredte -c 'INSERT INTO contribuyente VALUES (66666666, '6', 'Sin razón social informada', 'Sin giro informado', NULL, NULL, NULL, 'Sin dirección informada', '13101', NULL, NOW());'
