docker run \
  --name sdet-latest \
  --network jenkins \
  --privileged \
  --volume $PWD:/wd \
  -it \
  z1_sdet \
  /bin/bash
  
