### MPI-INF-3DHP, GT, 27 frames
#### Training
python run_HDiffTG_3dhp.py --gpu_id 0,1,2,3 --workers 4 -lr 4e-4 --lr-decay 0.99 -b 64 -e 200 --max_time 69 --patience 999 --batch-size-eval 512 --timesteps 1000 --with_time_emb False --sampling_timesteps 5 --keypoints gt --beta_schedule cosine --ddim_sampling_eta 0 --embed_dim 512 --transformer_depth 8 --stride 27 --number-of-frames 27 --clip_loss True -c checkpoint/3dhp/gt/f27/ --config '3dhp_gt_HDiffTG.json'
#### Evaluation
python run_HDiffTG_3dhp.py --gpu_id 0,1,2,3 --workers 4 --batch-size-eval 512 --with_time_emb False --sampling_timesteps 7 --keypoints gt --ddim_sampling_eta 0 --stride 27 --number-of-frames 27 --clip_loss True -c checkpoint/3dhp/gt/f27/ --evaluate 3dhp-81-18.8.bin --config '3dhp_gt_HDiffTG.json'