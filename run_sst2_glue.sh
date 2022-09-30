export TASK_NAME=sst2

python run_glue_no_trainer.py \
  --model_name_or_path bert-base-uncased \
  --max_length 128 \
  --task_name $TASK_NAME \
  --per_device_train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 3 \
  --output_dir ./tmp/baseline/$TASK_NAME/
