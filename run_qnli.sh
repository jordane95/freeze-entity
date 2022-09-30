export TASK_NAME=qnli
export DATA_PATH=./data/QNLI

python run_glue_no_trainer.py \
  --model_name_or_path bert-base-uncased \
  --max_length 128 \
  --train_file $DATA_PATH/train.tsv \
  --validation_file $DATA_PATH/dev.tsv \
  --per_device_train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 3 \
  --output_dir ./tmp/baseline/$TASK_NAME/
