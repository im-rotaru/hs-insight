#!/bin/bash
mkdir -p \
.github/workflows \
configs \
data/samples \
docker/pipeline \
infra/terraform \
pipeline/modules \
dashboard/components \
ml \
scripts \
tests

touch \
.github/workflows/ci.yml \
configs/nextflow.config \
data/samples/.gitkeep \
docker/pipeline/Dockerfile \
infra/terraform/main.tf \
infra/terraform/variables.tf \
pipeline/main.nf \
pipeline/modules/{annotate.nf,preprocess.nf,filter.nf} \
dashboard/app.py \
dashboard/components/plots.py \
ml/README.md \
ml/placeholder.py \
scripts/download_test_data.sh \
tests/test_pipeline.py \
requirements.txt
