#!/bin/sh

mvn clean
mvn test -Dcucumber.filter.tags="@registerNewUser" -Dconf="local" -Ddataproviderthreadcount=1 ##-Dheadless=true