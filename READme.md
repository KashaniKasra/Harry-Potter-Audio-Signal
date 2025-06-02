# Harry Potter Audio Signal Analysis & Classification

This project focuses on the analysis, processing, and classification of audio signals from Harry Potter movie scenes. The objective is to use machine learning and signal processing techniques to classify audio clips based on spoken characters, background music, or scene types.

## Technologies Used

- Python (Librosa, NumPy, Pandas)
- Scikit-learn, TensorFlow / PyTorch
- Matplotlib, Seaborn
- Jupyter Notebooks
- Signal processing & audio feature extraction

---

## Workflow Summary

### 1. Audio Preprocessing
- Convert to mono, resample (e.g., 16kHz)
- Trim silence, normalize loudness
- Segment audio files into fixed-length chunks

### 2. Feature Extraction
- MFCCs (Mel-Frequency Cepstral Coefficients)
- Chroma features
- Spectral Contrast
- Zero-Crossing Rate
- Root Mean Square Energy

### 3. Model Building
- **Model 1:** CNN on Spectrograms
- **Model 2:** LSTM on MFCC sequences
- **Model 3:** Classical ML (SVM, Random Forest) on statistical audio features

### 4. Evaluation
- Accuracy, Precision, Recall, F1-Score
- Confusion Matrix
- ROC-AUC (for binary/multiclass classification)

---

## Result Highlights

| Model        | Accuracy | F1-Score | AUC   |
|--------------|----------|----------|-------|
| CNN          | 91.2%    | 0.90     | 0.94  |
| LSTM         | 89.4%    | 0.88     | 0.92  |
| SVM (MFCCs)  | 85.7%    | 0.86     | 0.89  |

---

## Potential Improvements

- Fine-tuning on noisy dialogue segments
- Voice separation (speaker diarization)
- Use of transformer-based audio encoders (e.g., Wav2Vec2)

---

## How to Run

1. Clone repo and install requirements:
```bash
pip install -r requirements.txt
```

2. Run feature extraction:
```bash
python utils/extract_features.py --input audio_files/ --output features/
```

3. Train model:
```bash
python train.py --model cnn
```

4. Evaluate model:
```bash
python evaluate.py --model cnn
```

---

## Acknowledgements

Audio clips used for academic purposes under fair use. Inspired by the wizarding world of Harry Potter.