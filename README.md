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

Here's a sample file with several reference sentences: `data/references.txt`
```
    python create_json_references.py -i data/references.txt -o data/references.json
```

**Evaluate the model predictions against the references**

Sample file with predictions from a model is in `data/predicted_sentences.txt`
```
    python run_evaluations.py -i data/predicted_sentences.txt -r data/references.json
```

### References

- [Sequence to Sequence - Video to Text](http://arxiv.org/abs/1505.00487)
- [Microsoft COCO Captions: Data Collection and Evaluation Server](http://arxiv.org/abs/1504.00325)
- PTBTokenizer: [Stanford Tokenizer](http://nlp.stanford.edu/software/tokenizer.shtml) which is included in [Stanford CoreNLP 
3.4.1](http://nlp.stanford.edu/software/corenlp.shtml).
- BLEU: [BLEU: a Method for Automatic Evaluation of Machine Translation](http://www.aclweb.org/anthology/P02-1040.pdf)
- Meteor: [Project page](http://www.cs.cmu.edu/~alavie/METEOR/) with related publications. COCO server uses version (1.5) of the 
[Code](https://github.com/mjdenkowski/meteor).
- Rouge-L: [ROUGE: A Package for Automatic Evaluation of Summaries](http://anthology.aclweb.org/W/W04/W04-1013.pdf)
- CIDEr: [CIDEr: Consensus-based Image Description Evaluation] (http://arxiv.org/pdf/1411.5726.pdf)


\[1\] [Sequence to Sequence - Video to Text](https://vsubhashini.github.io/s2vt.html)

    Sequence to Sequence - Video to Text
    S. Venugopalan, M. Rohrbach, J. Donahue, T. Darrell, R. Mooney, K. Saenko
    The IEEE International Conference on Computer Vision (ICCV) 2015

\[2\] [Microsoft COCO Captions: Data Collection and Evaluation Server](https://github.com/tylin/coco-caption)

    Microsoft COCO Captions: Data Collection and Evaluation Server
    X. Chen, H. Fang, T.Y. Lin, R. Vedantam, S. Gupta, P. Dollar, C.L. Zitnick
    arXiv preprint arXiv:1504.00325
