--node.stripdebug(3)
adc.force_init_mode(adc.INIT_VDD33)
print("compiling files")
node.compile('setup.lua')
node.compile('setup_functions.lua')
node.compile('setup_led.lua')
-----------------------------
node.compile('ds18b20_test.lua')
node.compile('bme280_test.lua')
node.compile('bme680_test.lua')
node.compile('dht_test.lua')
node.compile('am2320_test.lua')
node.compile('veml6070_test.lua')
node.compile('max44009_test.lua')
-----------------------------
node.compile('ds18b20.lua')
node.compile('bme280.lua')
node.compile('bme680.lua')
node.compile('dht.lua')
node.compile('am2320.lua')
node.compile('dht_second.lua')
node.compile('am2320_second.lua')
node.compile('veml6070.lua')
node.compile('max44009.lua')
node.compile('oled128x64.lua')
node.compile('request.lua')
-----------------------------
node.compile('sensor_functions.lua')
node.compile('global_sensor_vars.lua')
node.compile('global_sensor_vars_unset.lua')
-----------------------------
node.compile('display_only.lua')
node.compile('web.lua')
node.compile('wifi_send_request.lua')
-----------------------------
node.compile('init2.lua')
node.compile('wget.lua')
node.compile('custom_do.lua')
-----------------------------
print("removing files")
--tmr.delay(5*1000000)
-----------------------------
-----------------------------
file.remove('setup.lua')
file.remove('setup_functions.lua')
file.remove('setup_led.lua')
-----------------------------
file.remove('ds18b20_test.lua')
file.remove('bme280_test.lua')
file.remove('bme680_test.lua')
file.remove('dht_test.lua')
file.remove('am2320_test.lua')
file.remove('veml6070_test.lua')
file.remove('max44009_test.lua')
-----------------------------
file.remove('ds18b20.lua')
file.remove('bme280.lua')
file.remove('bme680.lua')
file.remove('dht.lua')
file.remove('am2320.lua')
file.remove('dht_second.lua')
file.remove('am2320_second.lua')
file.remove('veml6070.lua')
file.remove('max44009.lua')
file.remove('oled128x64.lua')
file.remove('request.lua')
-----------------------------
file.remove('sensor_functions.lua')
file.remove('global_sensor_vars.lua')
file.remove('global_sensor_vars_unset.lua')
-----------------------------
file.remove('display_only.lua')
file.remove('web.lua')
file.remove('wifi_send_request.lua')
-----------------------------
file.remove('init2.lua')
file.remove('wget.lua')
file.remove('custom_do.lua')
-----------------------------
file.remove('install.lua')
-----------------------------
print("generating file list")
--tmr.delay(2*1000000)
dofile('generate_filelist.lua')
print("restarting")
node.dsleep(1*1000000)
