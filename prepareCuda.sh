vartest=$(ls /usr/local/)
if echo "$vartest" | grep -q "CUDA"; then
    echo "CUDA found in /usr/local/"
fi

# Check CUDA variables
#echo $LD_LIBRARY_PATH
#echo $PATH
#echo $LD_LIBRARY_PATH
#echo $PATH
#echo $CUDA_HOME

# If not found - installed but vars not initiaized?
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-10.0/lib64"
#export PATH="/usr/local/cuda-10.0/bin:$PATH"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
#export PATH="/usr/local/cuda/bin:$PATH"
#export CUDA_HOME="/usr/local/cuda-10.0"

# Get CUDA version for PyTorch-Install

# Get Anaconda Rdy
#cd ~
#mkdir Downloads
#cd Downloads
#curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
#sudo ./Anaconda3-2019.10-Linux-x86_64.sh

# Install Environment
#cd ~
#conda create -n deeplearning -c pytorch torchvision cudatoolkit=10.0