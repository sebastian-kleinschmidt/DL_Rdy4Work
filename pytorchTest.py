import torch

if not torch.cuda.is_available():
    print("CUDA ist not availabe")
print("Cuda is available:"+ torch.cuda.get_device_name(torch.cuda.current_device()))
