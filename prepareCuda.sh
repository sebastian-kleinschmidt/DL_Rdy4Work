RED="\033[0;31m"
NC="\033[0m"

vartest=$(ls /usr/local/)
printf "Check CUDA installation...\n"
if echo "$vartest" | grep -q "cuda"; then
    printf "... ${GREEN} CUDA found in /usr/local/ ${NC}\n"
else
    printf "... ${RED}CUDA not found in /usr/local ${NC}\n"
fi


#
# Check CUDA variables
printf "Check global variables...\n"
if echo "$LD_LIBRARY_PATH" | grep -q "cuda"; then
    printf "... ${GREEN} LD_LIBRARY_PATH: passed ${NC}\n"
else
    printf "... ${RED} LD_LIBRARY_PATH: failed - CUDA need to be added${NC}\n"
fi


if echo "$PATH" | grep -q "cuda"; then
    printf "... ${GREEN} PATH: passed ${NC}\n"
else
    printf "... ${RED} PATH: failed - CUDA need to be added${NC}\n"
fi


if echo "$CUDA_HOME" | grep -q "cuda"; then
    printf "... ${GREEN} CUDA_HOME: passed ${NC}\n"
else
    printf "... ${RED} CUDA_HOME: failed - CUDA need to be added${NC}\n"
fi


#echo $LD_LIBRARY_PATH
#echo $PATH
#echo $LD_LIBRARY_PATH
#echo $PATH
#echo $CUDA_HOME
#
# If not found - installed but vars not initiaized?
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-10.0/lib64"
#export PATH="/usr/local/cuda-10.0/bin:$PATH"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
#export PATH="/usr/local/cuda/bin:$PATH"
#export CUDA_HOME="/usr/local/cuda-10.0"
#
# Get CUDA version for PyTorch-Install
#
# Get Anaconda Rdy
#cd ~
#mkdir Downloads
#cd Downloads
#curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
#sudo ./Anaconda3-2019.10-Linux-x86_64.sh
#
# Install Environment
#cd ~
#conda create -n deeplearning -c pytorch torchvision cudatoolkit=10.0

#NVIDIA-SMI
