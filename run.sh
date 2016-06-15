#!/bin/bash
go-cve-dictionary server &
sleep 2
vuls $@