#!/bin/bash

cd ~
mkdir lab0
cd lab0

touch shellos2
touch stoutland1
touch trapinch8

mkdir -p feraligatr5/grovyle
mkdir feraligatr5/delcatty
mkdir feraligatr5/manectric
touch feraligatr5/steelix
touch feraligatr5/deino

mkdir -p gothitelle0/ferrothorn
touch gothitelle0/shuppet
touch gothitelle0/zweilous

mkdir -p snover0/skitty
mkdir snover0/golem
mkdir snover0/torterra
touch snover0/treecko
touch snover0/jynx


echo -e 'Способности Unbreakable Landslide Sturdy Rock\nHead' > feraligatr5/steelix
echo -e 'Способности Dark Art Pure Blooded Hustle\nKlutz' > feraligatr5/deino
echo -e 'Возможности Overland=1 Surface=4 Sky=4 Jump=3 Power1=0\nIntelligence=4 Invisibility=0 Phasing=0 Stealth=0' > gothitelle0/shuppet
echo -e 'Тип\nПокемона DARK DRAGON' > gothitelle0/zweilous
echo -e 'Тип покемона WATER\nNONE' > shellos2
echo -e 'Живет Rainforest' > snover0/treecko
echo -e 'weight=89.5 height=55.0 atk=5\ndef=4' > snover0/jynx
echo -e 'Тип диеты Omnivore' > stoutland1
echo -e 'Тип диеты Carnivore' > trapinch8

echo -e '-- Step 1 completed! --'


chmod 357 feraligatr5
chmod 004 feraligatr5/steelix
chmod 512 feraligatr5/grovyle
chmod u=rwx,g=wx,o=rw feraligatr5/delcatty
chmod u=rx,g=rwx,o=wx feraligatr5/manectric
chmod 400 feraligatr5/deino

chmod 574 gothitelle0
chmod 551 gothitelle0/ferrothorn
chmod u=rw,g=w,o= gothitelle0/shuppet
chmod u=rw,g=r,o= gothitelle0/zweilous
chmod u=r,g=r,o= shellos2

chmod 361 snover0
chmod 751 snover0/skitty
chmod 764 snover0/golem
chmod 764 snover0/torterra
chmod 044 snover0/treecko
chmod 664 snover0/jynx
chmod 600 stoutland1
chmod 400 trapinch8

echo -e '-- Step 2 completed! --'


chmod u+w gothitelle0/ferrothorn  # cp: gothitelle0/ferrothorn/gothitelle0: Permission denied
chmod u+r feraligatr5/steelix     # cat: feraligatr5/steelix: Permission denied
chmod u+w gothitelle0             # cp: gothitelle0/shuppetstoutland: Permission denied

ln stoutland1 feraligatr5/deinostoutland
ln -s ../trapinch8 feraligatr5/deinotrapinch
cp -r gothitelle0 gothitelle0/ferrothorn/
cat feraligatr5/deino feraligatr5/steelix > trapinch8_62
ln -s feraligatr5 Copy_17
cp stoutland1 gothitelle0/shuppetstoutland
cp trapinch8 snover0/skitty/

echo -e '-- Step 3 completed! --'



find lab0 -type f -name 't*' -exec sh -c 'wc -m "$1" 2>&1' _ {} \; | sort -nr
find lab0 -name 't*' -exec ls -lu {} + 2> /tmp/errors2.log | sort -rk 6,8
find lab0 -type f -name '*x' -exec cat {} 2>&1 \; | sort -r

grep -rl "fe" lab0 --binary-files=text 2> /tmp/errors4.log \
    | xargs -I{} ls -l {} \
    | sort -k 2 -nr

cat -n shellos2 2>&1 | grep -viE 'e$'
find feraligatr5 -type f 2> /tmp/errors6.log | sort


echo -e '-- Step 4 completed! --'



rm -f shellos2
rm -f snover0/treecko

find . -type l -name 'Copy_*' -exec rm -f {} \;

rm -f feraligatr5/deino*

rmdir snover0 2>/dev/null
rmdir snover0/golem 2>/dev/null


echo -e '-- Step 5 completed! --'
