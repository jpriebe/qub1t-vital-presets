#!/usr/bin/env bash

BASE=qub1t
rm -rf $BASE

for VOL in vol1 vol2
do
    mkdir $BASE
    mkdir $BASE/Presets
    mkdir $BASE/Presets/$VOL
    cp Presets/$VOL/* $BASE/Presets/$VOL
    zip -r $BASE-vital-presets-$VOL.zip $BASE
    mv $BASE-vital-presets-$VOL.zip $BASE-vital-presets-$VOL.vitalbank
    rm -rf $BASE
done

