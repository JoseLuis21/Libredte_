#!/bin/bash
psql -d libredte < /usr/share/sowerphp/extensions/sowerphp/app/Module/Sistema/Module/Usuarios/Model/Sql/PostgreSQL/usuarios.sql
psql -d libredte < /usr/share/sowerphp/extensions/sowerphp/app/Module/Sistema/Module/General/Model/Sql/moneda.sql
psql -d libredte < /var/www/html/libredte/website/Module/Sistema/Module/General/Model/Sql/PostgreSQL/actividad_economica.sql
psql -d libredte < /usr/share/sowerphp/extensions/sowerphp/app/Module/Sistema/Module/General/Module/DivisionGeopolitica/Model/Sql/PostgreSQL/division_geopolitica.sql
psql -d libredte < /var/www/html/libredte/website/Module/Dte/Model/Sql/PostgreSQL.sql
psql -d libredte -c 'GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO user_libredte;'
psql -d libredte -c 'GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO user_libredte;'
