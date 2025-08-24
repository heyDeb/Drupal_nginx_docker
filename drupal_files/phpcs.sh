#!/bin/bash

#RUn this script into your terminal using the command: $ sh phpcs.sh

phpcs --colors --standard=Drupal --extensions=php,module,inc,install,profile,theme,css,info,md,yml docroot/modules/custom
phpcs --colors --standard=Drupal --extensions=php,module,inc,install,profile,theme,info,md,yml docroot/sites
phpcs --colors --standard=Drupal --extensions=php,module,inc,install,profile,theme,info,md,yml docroot/themes/custom
phpcs --standard=Drupal -e

#Check Drupal best practices
phpcs --standard=DrupalPractice --extensions=php,module,inc,install,test,profile,theme,css,info,md,yml docroot/modules/custom

#Automatically fix coding standards
phpcbf --standard=Drupal --extensions=php,module,inc,install,test,profile,theme,css,info,md,yml
