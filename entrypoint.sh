#!/bin/bash
echo $NPC_URL
exec npc -server=$NPC_URL -vkey=$NPC_KEY -type=tcp
