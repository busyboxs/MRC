export CUDA_VISIBLE_DEVICES=0
python run.py   \
--trainset '/home/aistudio/data/data1410/search.train.json' \
           '/home/aistudio/data/data1410/zhidao.train.json' \
--devset '/home/aistudio/data/data1410/search.valid.json' \
         '/home/aistudio/data/data1410/zhidao.valid.json' \
--testset '/home/aistudio/data/data1410/search.test.json' \
          '/home/aistudio/data/data1410/zhidao.test.json' \
--vocab_dir 'data/vocab' \
--use_gpu true \
--save_dir ./models \
--pass_num 10 \
--learning_rate 0.001 \
--batch_size 32 \
--embed_size 300 \
--hidden_size 150 \
--max_p_num 5 \
--max_p_len 500 \
--max_q_len 60 \
--max_a_len 200 \
--weight_decay 0.0001 \
--drop_rate 0.2 $@\
