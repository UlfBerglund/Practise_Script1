#!/bin/bash
#
# Detta script samlar in systeminformation - RECON
#
# Kan användas för följande attacker:
# Upptäcka öppna portar som kan utnyttjas
# Hitta obehöriga användare
# Kartlägga nätverk och routing
# Author: Ulf Berglund
# Last Update: 2025-01-01


echo "Välkommen till RECON script för att kontrollera en Linux-miljö"

echo
echo "=== SYSTEMINFO ==="
uname -a

echo
echo "=== AKTUELL ANVÄNDARE  ==="
echo $USER
echo
echo "=== ANVÄNDARE MED SHELL ==="
grep "sh$" /etc/passwd

echo
echo "=== NÄTVERK ==="
ip a | grep inet

echo
echo "=== LÄGG TILL FLERA TESTER  ==="

echo "=== HÅRDVARA  ==="
lscpu
echo "== HUR MYCKET RAM ÄR LEDIGT/ANVÄNDS? =="
free -h
echo "== ADMIN =="
getent group sudo
echo "== SENASTE INLOGGNINGAR =="
last -a | head
echo "== ROUTING =="
ip route
echo "== AKTIVA PORTAR  =="
ss -tuln
echo "== DATUM OCH TID =="
date

