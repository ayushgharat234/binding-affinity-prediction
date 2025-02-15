# Binding Affinity Prediction of Small Molecules Toward HIV
## Machine Learning-Driven Binding Affinity Prediction Using Molecular Fingerprints
**Author: Ayush Gharat**
**Institution: uGDX School of Technology, Atlas SkillTech University**
**Corresponding Author**: ayushgharat234@gmail.com

---

## 📌 Project Overview
This project explores **binding affinity prediction** for **small molecules targeting HIV proteins** using **`cheminformatics`** and **`machine learning techniques`**. The study integrates **molecular fingerprints** with machine learning models to **`predict the binding strengths (IC50 values)`** of molecules with HIV-related protein targets.

The work incorporates:

- Multiple **molecular fingerprinting** techniques: *MACCS Keys, Avalon, Morgan Circular, Atom-Pair, and Topological Torsion*.
- **Regression-based machine learning models**: *Random Forest, Support Vector Regression (SVR), Gradient Boosting, and Decision Trees*.
- **Dimensionality reduction techniques** such as **`Principal Component`** Analysis (PCA) to optimize predictive performance.
📄 This work is backed by a research paper and a detailed project report documenting methodology, results, and insights into drug discovery applications.

---

## 📂 Dataset
The dataset used in this project is compiled from:

- **BindingDB** and **ChEMBL**: Sources for experimental bioactivity data.
- **`binding_affinity.csv`**: Contains IC50 values of various small molecules against HIV target proteins.
- **Preprocessing**: The dataset is *cleaned, normalized,* and *preprocessed** using `RDKit`, ensuring consistency in binding affinity representations.

---

## ⚙️ Installation & Dependencies
To set up and run the project, choose one of the following methods:  

### **1. Using pip (Basic Setup)**  
Install dependencies using:  
```bash
pip install -r requirements.txt
```

### **2. Using Conda (Environment Setup)**
Create and activate a Conda environment using:
```bash
conda env create -f environment.yml
conda activate binding-affinity
```


### **3. Using Docker (Containerized Setup)**
If you prefer a containerized environment, you can set up and run the project using Docker.

**1️⃣ Build the Docker Image**
```bash
docker build -t binding-affinity .
```

**2️⃣ Run the Docker Container**
```bash
docker run -p 8888:8888 binding-affinity
```

Once the container starts, it will display a Jupyter Notebook URL with a token. Copy and open the link in your browser.

**3️⃣ (Optional) Run the Container in Interactive Mode**
```bash
docker run -it binding-affinity /bin/bash
```

---

## 🛠️ Usage Instructions
1. Clone the repository:
```bash
git clone https://github.com/ayushgharat234/binding-affinity-prediction.git
cd binding-affinity-prediction
```

2. Run the Jupyter Notebook
```bash
jupyter notebook "Binding Affinity Prediction of the Drug Molecules.ipynb"
```

3. Dataset Preprocessing:

- Load IC50_data.csv and clean it using RDKit.
- Generate molecular fingerprints.
- Normalize IC50 values into pIC50 (negative logarithm for consistency).

4. Train the Machine Learning Models:

- Run different regression models: Random Forest, SVR, Decision Trees, Gradient Boosting.
- Apply dimensionality reduction (PCA) to optimize feature selection.

5. Evaluate Performance:

- Use metrics: R² Score, Mean Absolute Error (MAE), Root Mean Squared Error (RMSE).

---

## 🧪 Model & Feature Engineering

| Fingerprint Type | Best Model | R² Score | MAE | RMSE |
|------------------|------------|----------|------|------|
| MACCS Keys | Linear Regression | 0.58 | 0.742 | 0.976 |
| Avalon | SVR | 0.74 | 0.594 | 0.848 |
| Atom-Pair | SVR | 0.78 | 0.688 | 0.944 |
| Morgan Circular | Random Forest | 0.85 | 0.575 | 0.832 |
| Hybrid (PCA Applied) | Random Forest | 0.89 | 0.569 | 0.794 |

✅ **The Morgan Circular Fingerprints + Random Forest model provided the highest accuracy (R² = 0.85).**
✅ **Applying PCA on a hybrid fingerprint model further improved performance to R² = 0.89.**

### Additional Model Performance Metrics

| Model | MAE | MSE | RMSE | R² |
|--------|--------|--------|--------|--------|
| Random Forest | 0.589148 | 0.702946 | 0.838419 | 0.743410 |
| Linear Regression | 0.836358 | 1.139712 | 1.067573 | 0.583981 |
| SVR | 0.627257 | 0.768199 | 0.876469 | 0.719591 |
| Gradient Boosting | 0.821407 | 1.091319 | 1.044662 | 0.601645 |
| Decision Tree | 0.664448 | 1.100856 | 1.049217 | 0.598164 |

---

## 📊 Results & Insights

- Morgan Circular Fingerprints proved most effective in binding affinity prediction due to their ability to capture local connectivity features.
- Random Forest outperformed SVR, Decision Trees, and Linear Regression, showing robustness in high-dimensional data.
- Hybrid fingerprint models (combining multiple descriptors) with PCA reduced redundancy while retaining 85% of data variance.

### Computational Trade-offs:
- **MACCS Keys**: Fastest but lowest predictive accuracy.
- **Atom-Pair & Topological Torsion**: Higher computation time, limited improvement in accuracy.

---

## 🚀 Future Improvements
- **Deep Learning Integration**: Use Graph Neural Networks (GNNs) or Transformer-based models for enhanced feature extraction.
- **Molecular Docking Integration**: Combine ML predictions with AutoDock Vina to validate binding pose predictions.
- **Automated Virtual Screening**: Develop a REST API using FastAPI to automate large-scale molecule screening.

--- 

## 📚 References
- **ChEMBL Database**: [https://www.ebi.ac.uk/chembl/](https://www.ebi.ac.uk/chembl/)
- **BindingDB**: [https://www.bindingdb.org/](https://www.bindingdb.org/)
- **Morgan Circular Fingerprints**: Rogers, D., & Hahn, M. (2010). Extended-Connectivity Fingerprints. *Journal of Chemical Information and Modeling*
- **RDKit Documentation**: [https://www.rdkit.org/](https://www.rdkit.org/)

---

## 📝 Citation
If using this project, please cite:
> **Ayush Gharat**, "Machine Learning-Driven Binding Affinity Prediction Using Molecular Fingerprints: A Case Study on HIV Proteins," *Atlas SkillTech University, 2024.*
