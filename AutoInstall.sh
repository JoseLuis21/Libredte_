psql -U user_libredte -h localhost libredte -c "\COPY actividad_economica FROM '/tmp/actividad_economica.csv' delimiter ',' csv header;"
########
sleep 30s
psql -U user_libredte -h localhost libredte -c "\COPY dte_referencia_tipo FROM '/tmp/datos.csv' delimiter ',' csv header;"
psql -U user_libredte -h localhost libredte -c "\COPY dte_tipo FROM '/tmp/dte_tipo.csv' delimiter ',' csv header;"
psql -U user_libredte -h localhost libredte -c "\COPY impuesto_adicional FROM '/tmp/impuesto_adicional.csv' delimiter ',' csv header;"
psql -U user_libredte -h localhost libredte -c "\COPY iva_no_recuperable FROM '/tmp/iva_no_recuperable.csv' delimiter ',' csv header;"

########
sleep 30s
psql -U user_libredte -h localhost libredte -c "\COPY region FROM '/tmp/division_geopolitica.csv' delimiter ',' csv header;"
psql -U user_libredte -h localhost libredte -c "\COPY provincia FROM '/tmp/provincia.csv' delimiter ',' csv header;"
psql -U user_libredte -h localhost libredte -c "\COPY comuna FROM '/tmp/comuna.csv' delimiter ',' csv header;"

########
sleep 30s
psql -U user_libredte -h localhost libredte -c "INSERT INTO contribuyente VALUES (55555555, '5', 'Extranjero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NOW());"
psql -U user_libredte -h localhost libredte -c "INSERT INTO contribuyente VALUES (66666666, '6', 'Sin razón social informada', 'Sin giro informado', NULL, NULL, NULL, 'Sin dirección informada', '13101', NULL, NOW());"

sleep 5s
wget https://github.com/tdcomcl/Libredte_/blob/master/script_psql.sh
wget https://github.com/tdcomcl/Libredte_/blob/master/Psql_.sh
./script_psql.sh
rm script_psql.sh
rm Psql_.sh
rm -R /root/*

echo -e "\n----Ingresar por web http://dominio.cl ----"
echo -e "\n----Listo solo falta poblar datos! ----"
