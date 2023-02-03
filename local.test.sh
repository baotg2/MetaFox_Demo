#!/bin/sh

mvn clean
mvn test -Dcucumber.filter.tags="@previewSite" -Dconf="local" -Ddataproviderthreadcount=1 ##-Dheadless=true