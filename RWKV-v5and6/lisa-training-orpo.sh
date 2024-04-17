python train.py --load_model "base_model/RWKV-5-World-0.4B-v2-20231113-ctx4096.pth"\
 --wandb "RWKV-LM-LISA+ Valley v5 0.4b orpo experiment" --proj_dir "0b4"\
 --data_file "dataset/dataset"\
 --data_type "binidx" --vocab_size 65536 --ctx_len 4096 \
 --epoch_steps 1250 --epoch_count 1000 --epoch_begin 0 --epoch_save 1 \
 --micro_bsz 12 --n_layer 24 --n_embd 1024\
 --lr_init 5e-6 --lr_final 1e-6 \
 --warmup_steps 100 --beta1 0.9 --beta2 0.999 --adam_eps 1e-8 \
 --accelerator gpu --devices 1 --precision bf16 \
 --grad_cp 0 --my_testing "" \
 --strategy deepspeed_stage_1\
 --lisa 1 \
 --lisa_active_layer 1 \
 --lisa_interval_steps 5 \
 --lisa_debug 1 \
 --lisa_rand_seed 0 \
 --lisa_plus_enabled 1 \
 --lisa_plus_att_train_params "att.receptance.weight,att.key.weight,att.value.weight,att.gate.weight,att.output.weight" \
 --lisa_plus_att_active_weight 2 \
 --lisa_plus_ffn_train_params "ffn.receptance.weight,ffn.key.weight,ffn.value.weight" \
 --lisa_plus_ffn_active_weight 2 \
 --lisa_plus_att_permanent_freeze_params '' \
 --lisa_plus_ffn_permanent_freeze_params '' \
 --lisa_plus_custom_layer_probabilities 1\
 --lisa_plus_custom_layer_probabilities_profile 'layerprofile/24_Valley.csv' \
 --gpu_arch cuda \
 --orpo 1 \
 --orpo_alpha 0.01 \
 --rlhf_train_file trainset.save \
 --rlhf_max_corpus_len 600
