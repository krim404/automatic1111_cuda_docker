#!/bin/bash
mkdir -p ./models/Stable-diffusion
cd ./models/Stable-diffusion

# epiCPhotoGasm - Last Unicorn
wget --content-disposition 'https://huggingface.co/reszkapl/reszkaplmodels/resolve/main/epicphotogasm_lastUnicorn.safetensors?download=true'

# Realistic Vision V6.0 B1 - V6.0 B1 (VAE)
wget --content-disposition 'https://huggingface.co/reszkapl/reszkaplmodels/resolve/main/realisticVisionV60B1_v60B1VAE.safetensors?download=true'

# RunDiffusionXL - beta
wget --content-disposition 'https://huggingface.co/reszkapl/reszkaplmodels/resolve/main/rundiffusionXL_beta.safetensors?download=true'

# Juggernaut XL - V7 + RunDiffusion
wget --content-disposition 'https://huggingface.co/reszkapl/reszkaplmodels/resolve/main/juggernautXL_v7Rundiffusion.safetensors?download=true'

# RealLife - v3.0
wget --content-disposition 'https://huggingface.co/reszkapl/reszkaplmodels/resolve/main/reallife_v30.safetensors?download=true'

# RealCartoon-XL - v5
wget --content-disposition 'https://huggingface.co/reszkapl/reszkaplmodels/resolve/main/realcartoonXL_v5.safetensors?download=true'

mkdir -p cd ./models/extensions/sd-webui-controlnet/models
cd ../extensions/sd-webui-controlnet/models

wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_full.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_mid.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_small.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_full.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_mid.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_small.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ioclab_sd15_recolor.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_sd15.pth'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_sd15_plus.pth'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_xl.pth'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_depth_anime.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_canny_anime.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_scribble_anime.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_openpose_anime.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_openpose_anime_v2.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_blur_anime_beta.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_blur_anime.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_blur.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_canny.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_depth.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sai_xl_canny_128lora.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sai_xl_canny_256lora.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sai_xl_depth_128lora.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sai_xl_depth_256lora.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sai_xl_recolor_128lora.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sai_xl_recolor_256lora.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sai_xl_sketch_128lora.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sai_xl_sketch_256lora.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sargezt_xl_depth.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sargezt_xl_depth_faid_vidit.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sargezt_xl_depth_zeed.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/sargezt_xl_softedge.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_xl_canny.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_xl_openpose.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_xl_sketch.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_canny.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_depth_midas.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_depth_zoe.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_lineart.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_openpose.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_sketch.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/thibaud_xl_openpose.safetensors'
wget --content-disposition 'https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/thibaud_xl_openpose_256lora.safetensors'

mkdir -p ./models/extensions/sd-webui-animatediff/model
cd ../../sd-webui-animatediff/model

wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/mm_sd_v14.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/mm_sd_v15.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/mm_sd_v15_v2.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/mm_sdxl_v10_beta.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_PanLeft.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_PanRight.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_RollingAnticlockwise.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_RollingClockwise.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_TiltDown.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_TiltUp.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_ZoomIn.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_ZoomOut.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/refs%2Fpr%2F3/mm_sd_v14.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/refs%2Fpr%2F3/mm_sd_v14.safetensors'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/refs%2Fpr%2F3/mm_sd_v15.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/refs%2Fpr%2F3/mm_sd_v15.safetensors'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/refs%2Fpr%2F3/mm_sd_v15_v2.ckpt'
wget --content-disposition 'https://huggingface.co/guoyww/animatediff/resolve/refs%2Fpr%2F3/mm_sd_v15_v2.safetensors'
wget --content-disposition 'https://huggingface.co/manshoety/AD_Stabilized_Motion/resolve/main/mm-Stabilized_high.pth'
wget --content-disposition 'https://huggingface.co/manshoety/AD_Stabilized_Motion/resolve/main/mm-Stabilized_mid.pth'
wget --content-disposition 'https://huggingface.co/CiaraRowles/TemporalDiff/resolve/main/temporaldiff-v1-animatediff.ckpt'
wget --content-disposition 'https://huggingface.co/CiaraRowles/TemporalDiff/resolve/main/temporaldiff-v1-animatediff.safetensors'
wget --content-disposition 'https://huggingface.co/hotshotco/Hotshot-XL/resolve/main/hsxl_temporal_layers.f16.safetensors'
wget --content-disposition 'https://huggingface.co/hotshotco/Hotshot-XL/resolve/main/hsxl_temporal_layers.safetensors'