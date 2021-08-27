#!/usr/bin/env bash
#python main.py --arch mobile --bit 32 -id 0,1 --wd 5e-4 
python main.py --arch mobile --bit 4 -id 0,1 --wd 1e-4  --lr 4e-2 \
        --init result/mobile_32bit/model_best.pth.tar
python main.py --arch mobile --bit 3 -id 0,1 --wd 1e-4  --lr 4e-2 \
        --init result/mobile_4bit/model_best.pth.tar
python main.py --arch mobile --bit 2 -id 0,1 --wd 3e-5  --lr 4e-2 \
        --init result/mobile_3bit/model_best.pth.tar
