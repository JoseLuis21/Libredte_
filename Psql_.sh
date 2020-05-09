#!/bin/bash
psql -d libredte -c 'GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO user_libredte;'
psql -d libredte -c 'GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO user_libredte;'
psql libredte < /usr/share/sowerphp/extensions/sowerphp/app/Module/Sistema/Module/Usuarios/Model/Sql/PostgreSQL/usuarios.sql
psql libredte < /usr/share/sowerphp/extensions/sowerphp/app/Module/Sistema/Module/General/Model/Sql/moneda.sql
psql libredte < /var/www/html/libredte/website/Module/Sistema/Module/General/Model/Sql/PostgreSQL/actividad_economica.sql
psql libredte < /usr/share/sowerphp/extensions/sowerphp/app/Module/Sistema/Module/General/Module/DivisionGeopolitica/Model/Sql/PostgreSQL/division_geopolitica.sql
psql libredte < /var/www/html/libredte/website/Module/Dte/Model/Sql/PostgreSQL.sql
