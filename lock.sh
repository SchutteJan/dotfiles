#!/bin/sh


B='#00000000'  # blank
C='#1d1f21aa'  # clear ish
D='#a54242ff'  # default
T='#ee00ee00'  # text
W='#1d1f21aa'  # wrong
V='#a54242ff'  # verifying
H='#de935fff'  # highlight

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$H       \
--bshlcolor=$W        \
--image="/home/jan/apps/wallpapers/tokyo_blur.jpg" \
--tiling \
--screen 1            \
--ignore-empty-password \
--show-failed-attempts \
--nofork
# --blur 5              \
# --indicator           \
# --keylayout 2         \
#--veriftext="..." \
#--wrongtext="Nope!" \
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
