## Caption Evaluator ##

Sentence/Caption evaluation using automated metrics.

This code is released as supplementary material with
[S2VT](https://vsubhashini.github.io/s2vt.html)\[1\].

This code can be used to

1. evaluate sentences/captions for any dataset,
2. it provides BLEU, METEOR, ROUGE-L and CIDEr scores.

This uses the MSCOCO caption evaluation code \[2\].

### Getting started

1. **Get this code.** `git clone https://github.com/vsubhashini/caption-eval.git`
2. **Get the coco evaluation scripts.** `./get_coco_scripts.sh`

To ensure you have all the dependencies for the evaluation scripts, please refer
to the [COCO Caption Evaluation page](https://github.com/tylin/coco-caption).


### Evaluating predicted sentences against groundtruth references

**Make sure you have the coco scripts**
```
    ./get_coco_scripts.sh
```

**Create your groundtruth references in the desired format**

`data/references.txt` is a sample file with several reference sentences.
```
    python create_json_references.py -i data/references.txt -o data/references.json
```

**Evaluate the model predictions against the references**

`data/predicted_sentences.txt` is a sample file with predictions from a model.
```
    python run_evaluations.py -i data/predicted_sentences.txt -r data/references.json
```

### References

\[1\] [Sequence to Sequence - Video to Text](https://vsubhashini.github.io/s2vt.html)

    Sequence to Sequence - Video to Text
    S. Venugopalan, M. Rohrbach, J. Donahue, T. Darrell, R. Mooney, K. Saenko
    The IEEE International Conference on Computer Vision (ICCV) 2015

\[2\] [Microsoft COCO Captions: Data Collection and Evaluation Server](https://github.com/tylin/coco-caption)

    Microsoft COCO Captions: Data Collection and Evaluation Server
    X. Chen, H. Fang, T.Y. Lin, R. Vedantam, S. Gupta, P. Dollar, C.L. Zitnick
    arXiv preprint arXiv:1504.00325

If you use this in your work please remember to acknowledge the original papers for BLEU, METEOR, ROUGE and CIDEr.
