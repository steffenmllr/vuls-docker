#!/bin/bash
go-cve-dictionary fetchnvd -last2y
go-cve-dictionary server &
sleep 2
vuls $@