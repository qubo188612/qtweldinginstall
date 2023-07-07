#！/bin/bash
mkdir CRAFT
mkdir DATA
mkdir log
mkdir SAVE
mkdir temp
xhost +
docker run --rm --network=host -itd --name qtwelding \
--mount type=bind,source=./SAVE,destination=/workspace/qtwelding/SAVE \
--mount type=bind,source=./CRAFT,destination=/workspace/qtwelding/CRAFT \
--mount type=bind,source=./log,destination=/workspace/qtwelding/log \
--mount type=bind,source=./DATA,destination=/workspace/qtwelding/DATA \
--mount type=bind,source=./temp,destination=/workspace/qtwelding/temp \
--privileged -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 \
--env LANG=C.UTF-8 \
qubo188612/ubuntu20.04:qtwelding

