# HS-Insight

A cloud-native, modular pipeline to analyze genetic variants potentially linked to Hidradenitis Suppurativa (HS).

Originally created as a personal project to support variant investigation for HS (Hurley Stage 2), **HS-Insight** is designed to be broadly useful as a learning platform and a practical tool for genomic variant annotation, infrastructure automation, and reproducible research.

## ✅ What Can This Be Used For?

### 🎯 Primary Use Case (Motivation for This Project)

* Help individuals and researchers explore potential genetic markers related to Hidradenitis Suppurativa.
* Enable cloud-based analysis and annotation of relevant SNPs for further medical exploration.

### 🔄 Broader Applications

* Educational tool for cloud engineers, DevOps professionals, and data scientists interested in genomics.
* Rapid prototyping of genomic pipelines (can adapt to other diseases: Crohn’s, psoriasis, etc.)
* Scaffold for ML-enhanced variant scoring workflows (AlphaMissense, ESM2, etc.)
* Infrastructure-as-Code (IaC) reference for reproducible research in bioinformatics.
* Enable researchers with limited engineering background to analyze small genomic datasets with clean dashboards.

## Goals

* Process real genomic data (VCF files)
* Annotate variants using Ensembl VEP
* Build infrastructure with Terraform
* Automate pipelines with Nextflow & Docker
* Visualize results using Python (Streamlit)
* Provide a flexible base for future machine learning integrations (e.g., AlphaGenome)

## Project Structure

```
hs-insight/
├── .github/workflows/      # CI/CD pipelines (GitHub Actions)
├── configs/                # Centralized pipeline configuration files
├── data/                   # Sample or input data (VCF files)
│   └── samples/            # Small test datasets
├── docker/                 # Containerized bioinformatics tools (VEP, bcftools)
│   └── pipeline/           # Dockerfile for pipeline components
├── infra/                  # Terraform cloud infrastructure (GCS, S3)
│   └── terraform/          # Terraform definitions and variables
├── pipeline/               # Nextflow pipeline logic
│   ├── main.nf             # Entry point for workflow
│   └── modules/            # Reusable processes: annotate, preprocess, filter
├── dashboard/              # Python-based visual dashboard (Streamlit/Dash)
│   └── components/         # Dashboard UI modules (plots, tables)
├── ml/                     # Placeholder for future ML model integrations
├── scripts/                # Utility scripts (e.g., data download, format)
├── tests/                  # Unit and integration tests
├── requirements.txt        # Python dependencies
└── README.md               # Project overview
```

## Milestone Phases

1. ✅ Project scaffold complete
2. ⏳ Build Docker environment for VEP + tools
3. ⏳ Develop Nextflow pipeline to filter/annotate VCF
4. ⏳ Deploy infrastructure with Terraform
5. ⏳ Build interactive dashboard (Streamlit)
6. 🔜 Integrate ML-based scoring module (e.g., AlphaGenome)

---

## Learning Objectives

| Domain         | Skills & Concepts                                         |
| -------------- | --------------------------------------------------------- |
| DevOps         | Docker, CI/CD, GitHub Actions, Terraform                  |
| Bioinformatics | Variant annotation, VCF processing, workflow automation   |
| Cloud          | GCP or AWS infrastructure as code                         |
| Python         | Data transformation, web dashboards with Streamlit        |
| ML (optional)  | Variant effect prediction models and integration patterns |

---

This project is open-source and designed to support iterative learning, biomedical exploration, and infrastructure best practices for genomics research.
