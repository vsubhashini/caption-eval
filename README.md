## Caption Evaluator ##

Sentence/Caption evaluation using automated metrics.

This code is released as supplementary material with
[S2VT](https://vsubhashini.github.io/s2vt.html)\[1\].

### Getting started

1. **Get this code.** `git clone https://github.com/vsubhashini/caption-eval.git`
2. **Get the coco evaluation scripts.** `./get_coco_scripts.sh`

To ensure you have all the dependencies for the evaluation scripts, please refer
to the [COCO Caption Evaluation page](https://github.com/tylin/coco-caption).


### Evaluating predicted sentences against groundtruth references

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

